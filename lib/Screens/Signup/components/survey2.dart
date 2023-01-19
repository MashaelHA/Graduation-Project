// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../../app_data.dart';
import '../../../widgets/survey_item.dart';
import '../../home/components/tab.dart';
import '../../home/components/header.dart';

class Cateegories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: 50,
                left: 200,
              ),
              child: Text(
                'ما الذي تهتم به أكثر؟',
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .headline4, //TextStyle(color: Color.fromARGB(255, 128, 179, 130)),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                // childAspectRatio: 2 / 3,
                // crossAxisSpacing: 20,
                // mainAxisSpacing: 20,
                // childAspectRatio: 3 / 4,
                childAspectRatio: 4 / 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 4,
              ),
              children: Cateegories_data.map(
                (categorytData) => CategoryItem(
                    categorytData.id,
                    categorytData.title,
                    categorytData.imageUrl),
              ).toList(),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 300,
              child: Center(
                // child: Padding(
                //   padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        // side: BorderSide(width: 1.0, color: Colors.black),
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: Colors.pink,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    "التالي",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // ),
        ],
      ),
    );
  }
}
