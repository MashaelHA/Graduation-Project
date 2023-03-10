// ignore_for_file: use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../../widgets/place_item.dart';
import '../../models/survey.dart';
import '../../data/app_data.dart';
import '../../utils/constants.dart';

class CategoryPlaces extends StatelessWidget {
  // const CategoryPlaces({Key? key}) : super(key: key);
  final String categoryId;
  final String categoryTitle;

  const CategoryPlaces(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {

    final filterdPlaces = PlaceType_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        backgroundColor: kPrimaryColor.withOpacity(0.5),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return PlaceItem(
              id: filterdPlaces[index].id,
              title: filterdPlaces[index].title,
              imageUrl: filterdPlaces[index].imageUrlPlace,
              placeType: filterdPlaces[index].placeType,
            );
          },
          itemCount: filterdPlaces.length,
        ),
      ),
    );
  }
}
