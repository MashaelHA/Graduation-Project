// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../models/place.dart';

class PlacesDetails extends StatelessWidget {
  // const PlacesDetails({Key? key}) : super(key: key);

  final String id;
  final String title;
  final String imageUrl;
  final PlaceType placeType;

  const PlacesDetails({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.placeType,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
        ],
      ),
      // appBar: AppBar(
      //   title: Text(title),
      // ),
      // body: Container(
      //   child: Text('PlacesDetails here'),
      // ),
    );
  }
}