// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final String id;
  final String title;
  final String imageUrl;

  const CategoryItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: () {},
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
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      height: 70,
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
                padding: const EdgeInsets.all(5),
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
                  ],
                ),
              ),
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
