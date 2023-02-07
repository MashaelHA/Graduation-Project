// ignore_for_file: unused_import, use_key_in_widget_constructors


import 'package:flutter/material.dart';
import 'package:project_visitor_to_eastrn/data/firebaseauth.dart';

import '../../data/app_data.dart';
import '../../models/place.dart';
import '../home/components/header.dart';
import '../../utils/constants.dart';
import '../Welcome/welcome_screen.dart';

import 'components/item_favorite.dart';

class Favoraite extends StatefulWidget {
  // const Favoraite({Key? key}) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;

  const Favoraite({
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  @override
  State<Favoraite> createState() => _FavoraiteState();
}

List <Places> items=[];
class _FavoraiteState extends State<Favoraite> {
bool isloading=false;
  showfavorite() async{
    for (var i = 0; i < Firebaseauth.favorites.length; i++) {
      for (var j = 0; j< PlaceType_data.length; j++) {
        if(Firebaseauth.favorites[i]["place_id"]==PlaceType_data[j].id){
          // ignore: avoid_print
          print("cityname is:"); 
          // ignore: avoid_print
          print(PlaceType_data[j].cityName);
         items.add(PlaceType_data[j]);
       }
      }
       
    }


  setState(() {
      // ignore: avoid_print
      print("loading in progress");
      isloading=true;
    });

   
   Firebaseauth.favorites=[];
  }
  @override
  void initState() {
    items=[];
    _controller.getfavorite();
    Future.delayed(const Duration(seconds: 4), () {
        
      showfavorite();

});
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }
  
    // ignore: prefer_final_fields
    Firebaseauth _controller=Firebaseauth();
  @override
  Widget build(BuildContext context) {
   // ignore: unused_local_variable
   String imageurl='';
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Header(),
            // ignore: sized_box_for_whitespace
            if (isloading) Container(
              height: 600,
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  // ignore: avoid_print
                  print("length is:");
                  // ignore: avoid_print
                  print(items.length);
                return Card(
                  child: Column(
                       children: [
                         Stack(
                           children: [
                            
                              
                             // ignore: sized_box_for_whitespace
                             Container(
                               height: 70,
                                width: double.infinity,
                                child: Image.network(
                                       items[index].imageUrlPlace,fit: BoxFit.cover,
                                    ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                // ignore: prefer_const_constructors
                                child: Text(items[index].cityName,style:TextStyle(color: Colors.white,fontSize: 25),)),
                           ],
                         ),
                      // ignore: prefer_const_constructors
                      SizedBox(height: 10,)
                    ],
                  ),
                );
              },),
            ) else Column(
              
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                CircularProgressIndicator(
                  value: 2,
                  semanticsLabel: 'Circular progress indicator',
                ),
                // ignore: prefer_const_constructors
                Text("loading"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



//     Widget bigCircle = new Container(
//       width: 150.0,
//       height: 150.0,
//       decoration: new BoxDecoration(
//         color: Color(0xFF80FFC845),
//         shape: BoxShape.circle,
//       ),
//     );
//     return Container(
//       child: Column(
//         children: [
//           Header(),
//           SizedBox(
//             child: Text(
//               'المفضلة',
//               style: Theme.of(context).textTheme.headline2,
//               textAlign: TextAlign.right,
//             ),
//           ),
//           SizedBox(
//             child: Text(
//               'عدد المفضلات',
//               style: Theme.of(context).textTheme.headline4,
//               textAlign: TextAlign.right,
//             ),
//           ),
//           const SizedBox(
//             height: 80,
//           ),
//           SizedBox(
//             child: Stack(
//               children: [
//                 bigCircle,
//                 const Padding(
//                   padding: EdgeInsets.all(15.0),
//                   child: CircleAvatar(
//                     radius: 60,
//                     backgroundColor: SecondaryYellow,
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: kPrimaryColor,
//                       size: 100,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           SizedBox(
//             child: Text(
//               'قم بإنشاء حساب واختر اهتماماتك',
//               style: Theme.of(context).textTheme.headlineLarge,
//             ),
//           ),

//           const SizedBox(
//             height: 50,
//           ),


//           SizedBox(
//             width: 300,
//             child: ElevatedButton(
//               onPressed: () {
//                  Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => WelcomeScreen()));
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: RoundedRectangleBorder(
//                     // side: BorderSide(width: 1.0, color: Colors.black),
//                     borderRadius: BorderRadius.circular(25)),
//                 backgroundColor: Color(0xFF1E1C66).withOpacity(0.5),
//                 minimumSize: const Size(double.infinity, 50),
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   const Text('تسجيل الدخول',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontFamily: 'SST-Arabic-Roman',
//                       )),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   SizedBox(
//                     child: CircleAvatar(
//                       radius: 17,
//                       backgroundColor: SecondaryPink.withOpacity(0.6),
//                       child: const Icon(
//                         Icons.arrow_forward_ios,
//                         size: 24.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
