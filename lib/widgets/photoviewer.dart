// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, unused_local_variable, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyCustomWidget extends StatefulWidget {
  
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
  getcount() {
    return images.length;
  }
}
 
class _MyCustomWidgetState extends State<MyCustomWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            controller.forward();
          });
        },
        child: CardStack(controller),
      ),
    );
  }
}

class CardStack extends StatefulWidget {
  
  final AnimationController controller;

  CardStack(this.controller);

  @override
  _CardStackState createState() => _CardStackState();
}
List <String> images=["HaferAlbaten.jpg","Khafji.jpg","RasTanura.jpg","Jubail.jpg","Alahsa.jpg","Dhahran.jpg","Dammam.jpg","Khobar.jpg"];
List <String> sites=["حفر الباطن","الخفجي","رأس تنورة","الجبيل","الأحساء","الظهران","الدمام","الخبر"];
class _CardStackState extends State<CardStack> {
  late Animation<Offset> slideAnimation;
  late List<SlideCard> cardList;
int counter=0;
  @override
  
  void initState() {
    super.initState();
    cardList = List.generate(
      images.length,
      (index) => SlideCard(index),
    );
    slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(3, 0.0),
    ).animate(
      CurvedAnimation(
        parent: widget.controller,
        curve: Curves.ease,
      ),
    );
    widget.controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.controller.reset();
        setState(
          () { 
            cardList.removeLast();
            counter++;
            if(counter==images.length-1){
            cardList = List.generate(
               images.length,
               (index) => SlideCard(index),
              );
            counter=0;
          }
            }
       );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: cardList.map(
        (item) {
          return Transform.translate(
            offset: Offset(0, -item.index * 5.0),
            child: SlideTransition(
              position: getSlideOffset(item.index),
              child: item,
            ),
          );
        },
      ).toList(),
    );
  }

  getSlideOffset(int cardIndex) {
    if (cardIndex == cardList.length - 1) {
      return slideAnimation;
    } else {
      return AlwaysStoppedAnimation(Offset.zero);
    }
  }
}

class SlideCard extends StatelessWidget {
  final index;

  SlideCard(this.index);

  @override
  Widget build(BuildContext context) {
    
     double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        
        height: 300.0-(images.length-index*8),
        width: 300.0-(images.length-index*8),
        decoration: BoxDecoration(
          //color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            /*boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 20,
                offset: Offset(1, 1),
              )
            ]*/),
        child: Stack(
          children: [
           Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image:  DecorationImage(
                    image: AssetImage("assets/"+images[index]),
                    fit: BoxFit.fitHeight
                  ),
                  //border: Border.all(color: Colors.white, width: 10 ),
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
              Container(
                height: height/4,
                alignment: Alignment.bottomCenter,
                child: Text(sites[index],style: TextStyle(
                  color:Colors.white,
                  fontSize: 25,
                  fontFamily: 'Fontspring-DEMO-biotif',
                  // backgroundColor: Colors.black.withOpacity(0.4),
                  ),
                ),
                ),
              ],
        )
      ),
    );
  }
}