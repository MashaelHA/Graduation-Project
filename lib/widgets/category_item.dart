// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  // const CategoryItem({super.key});

  final String id;
  final String title;
  final Color color;
  final String imageUrl;

  const CategoryItem(this.id, this.title, this.color, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // return Stack(
    //   children: [
    //     ClipRRect(
    //       borderRadius: BorderRadius.circular(15),
    //       child: Image.network(
    //         imageUrl,
    //         height: 250,
    //         width: 400,
    //         fit: BoxFit.cover,
    //       ),
    //     ),
    //     Container(
    //       padding: const EdgeInsets.all(10),
    //       alignment: Alignment.center,
    //       child: Text(
    //         title,
    //         style: const TextStyle(
    //           fontSize: 30,
    //           color: Colors.white,
    //         ),
    //       ),
    //       decoration: BoxDecoration(
    //         color: Colors.black.withOpacity(0.4),
    //         borderRadius: BorderRadius.circular(15),
    //       ),
    //     ),
    //   ],
    // );

    //   return Stack(children: [
    //     widget(
    //       child: InkWell(
    //         //GestureDetector
    //         onTap: () {},
    //         splashColor: Theme.of(context).primaryColor,
    //         borderRadius: BorderRadius.circular(15),
    //         // ignore: duplicate_ignore
    //         child: Container(
    //           padding: const EdgeInsets.all(15),
    //           // ignore: sort_child_properties_last
    //           child: Text(
    //             title,
    //             style: const TextStyle(
    //               fontSize: 30,
    //               color: Colors.white,
    //             ), //Theme.of(context).textTheme.subtitle1, //title
    //           ),
    //           // color: color,
    //           decoration: BoxDecoration(
    //             gradient: LinearGradient(
    //               colors: [
    //                 color.withOpacity(0.7),
    //                 color,
    //               ],
    //               begin: Alignment.topLeft,
    //               end: Alignment.bottomRight,
    //             ),
    //             borderRadius: BorderRadius.circular(15),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ]);
    // }

    // widget({required InkWell child}) {}

    return SingleChildScrollView(
      child: InkWell(
        onTap: () {},
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          // margin: const EdgeInsets.all(10),
          child: Column(children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    // width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    // width: 300,
                    // color: Colors.black54,
                    // padding:
                    //     const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    // child: Text(
                    //   title,
                    //   style: const TextStyle(
                    //     fontSize: 26,
                    //     color: Colors.white,
                    //   ),
                    //   softWrap: true,
                    //   overflow: TextOverflow.fade,
                    // ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 6,
                        ),
                        Text(title),
                      ],
                    ),
                    //     Row(
                    //       children: <Widget>[
                    //         Icon(
                    //           Icons.work,
                    //         ),
                    //         SizedBox(
                    //           width: 6,
                    //         ),
                    //         Text('ComplexityText'),
                    //       ],
                    //     ),
                    //     Row(
                    //       children: <Widget>[
                    //         Icon(
                    //           Icons.attach_money,
                    //         ),
                    //         SizedBox(
                    //           width: 6,
                    //         ),
                    //         Text('affordabilityText'),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ]),
            )
          ]),
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


// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, unused_import

// import 'package:flutter/material.dart';
// import '../../screen/category_meals.dart';

// class CatetegoryItem extends StatelessWidget {
//   // const CatetegoryItem({super.key});

//   final String id;
//   final String title;
//   final Color color;

//   const CatetegoryItem(
//     this.id,
//     this.title,
//     this.color,
//   );

//   void selectCategory(BuildContext ctx) {
//     Navigator.of(ctx) //.push(
//         .pushNamed(
//       CategoryMeals.routeName,
//       arguments: {
//         'id': id,
//         'title': title,
//       },
//     );
//     // MaterialPageRoute(
//     //builder: (_) => return CategoryMeals();
//     // builder: (_) {
//     //   return CategoryMeals(id, title);
//     // },
//     // ),
//     // );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       //GestureDetector
//       onTap: (() => selectCategory(context)),
//       splashColor: Theme.of(context).primaryColor,
//       borderRadius: BorderRadius.circular(15),
//       child: Container(
//         padding: const EdgeInsets.all(15),
//         child: Text(
//           title,
//           style: Theme.of(context).textTheme.subtitle1, //title
//         ),
//         // color: color,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               color.withOpacity(0.7),
//               color,
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//           borderRadius: BorderRadius.circular(15),
//         ),
//       ),
//     );
//   }
// }
