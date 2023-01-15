// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../app_data.dart';
import '../widgets/category_item.dart';

class Cateegories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 50, left: 200,),
              child: Text(
                'ما الذي تهتم به أكثر؟',
                textAlign: TextAlign.right,
                style: TextStyle(color: Color.fromARGB(255, 128, 179, 130)),
              ),
            ),
          ),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 6,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: Cateegories_data.map(
                (categorytData) => CategoryItem(
                    categorytData.id,
                    categorytData.title,
                    categorytData.color,
                    categorytData.imageUrl),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}



// // ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors

// import 'package:flutter/material.dart';
// import '../widgets/dummy_data.dart';
// import '../widgets/category_item.dart';

// class Cateegories extends StatelessWidget {
//   const Cateegories({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView(
//       //Scaffold(
//       // appBar: AppBar(title: const Text('DeliMeal')),
//       //body: GridView(
//       padding: const EdgeInsets.all(25),
//       children: DUMMY_CATEGORIES
//           .map(
//             (catData) =>
//                 CatetegoryItem(catData.id, catData.title, catData.color),
//           )
//           .toList(),
//       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//         maxCrossAxisExtent: 200,
//         childAspectRatio: 3 / 2,
//         crossAxisSpacing: 20,
//         mainAxisSpacing: 20,
//       ),
//     );
//   }
// }
