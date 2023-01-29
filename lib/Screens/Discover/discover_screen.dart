// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../data/app_data.dart';
import '../../widgets/city_categories.dart';
import '../home/components/header.dart';

class Discover extends StatelessWidget {
  // const Discover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ 
          Header(),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                // childAspectRatio: 2 / 3,
                // crossAxisSpacing: 20,
                // mainAxisSpacing: 20,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: Cities_data.map(
                (categorytData) => CityCategories(
                    categorytData.id,
                    categorytData.title,
                    categorytData.imageUrl
                    ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}