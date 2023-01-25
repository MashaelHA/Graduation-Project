// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import '../Screens/places/places_screens.dart';
import '../constants.dart';

class CityCategories extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const CityCategories(this.id, this.title, this.imageUrl);


  void selectCity(BuildContext ctx) {
     Navigator.push(ctx,
                      MaterialPageRoute(builder: (context) => CategoryPlaces(id,title),),);
  }

  // void selectCity(BuildContext ctx) {
  //   Navigator.of(ctx).pushNamed(
  //    '/category-places',
  //    arguments: {
  //     'id': id,
  //     'title': title,
  //    }
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: () => selectCity(context),
        splashColor: Theme.of(context).primaryColor, //kPrimaryColor
        borderRadius: BorderRadius.circular(15),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          // margin: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    // .only(
                    //   topLeft: Radius.circular(15),
                    //   topRight: Radius.circular(15),
                    // ),
                    child: Image.network(
                      imageUrl,
                      // height: 250,
                      height: 200,
                      width: double.infinity,
                      // width: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    height: 200,
                    width: double.infinity,
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Fontspring-DEMO-biotif',
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )
                  // Positioned(
                  //   bottom: 20,
                  //   right: 10,
                  //   child: Container(
                  //       width: 300,
                  //       color: Colors.black54,
                  //       padding:
                  //           const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  //       child: Text(
                  //         title,
                  //         style: const TextStyle(
                  //           fontSize: 26,
                  //           color: Colors.white,
                  //         ),
                  //         softWrap: true,
                  //         overflow: TextOverflow.fade,
                  //       ),
                  //       ),
                  // )
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.all(5),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: <Widget>[
              //       Row(
              //         children: <Widget>[
              //           const SizedBox(
              //             width: 6,
              //           ),
              //           Text(title),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );

    // return Card(
    //     elevation: 3,
    //     child: InkWell(
    //       onTap: (() {}),
    //       child: Container(
    //         padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
    //         // width: size.width * .70,
    //         height: 100,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               title,
    //               style: const TextStyle(fontSize: 25, color: Colors.black,),
    //               textAlign: TextAlign.center,
    //             ),
    //             // Icon(
    //             //   Icons.local_activity,
    //             //   color: Colors.indigo[400],
    //             // )
    //           ],
    //         ),
    //       ),
    //     ));
  }
}
