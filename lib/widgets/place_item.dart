// ignore_for_file: use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import '../models/place.dart';
import '../Screens/places/places_screens.dart';
import '../Screens/places/places_details_screen.dart';

class PlaceItem extends StatelessWidget {
  // const PlaceItem({Key? key}) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  final PlaceType placeType;

  const PlaceItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.placeType,
  });

  void selectPlace(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(
        builder: (context) => PlacesDetails(id: id, title: title, imageUrl: imageUrl, placeType: placeType)//CategoryPlaces(id, title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectPlace(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),//all(Radius.circular(15)),
                  // only(
                  //   topLeft: Radius.circular(15),
                  //   topRight: Radius.circular(15),
                  //   bottomRight: Radius.circular(15),
                  //   bottomLeft: Radius.circular(15),
                  // ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8),
                      ],
                      stops: const [0.6, 1]
                      ),
                  ),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle2,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
