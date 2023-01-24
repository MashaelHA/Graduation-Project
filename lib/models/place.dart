import 'package:flutter/material.dart';

enum PlaceType {
  Activities,
  Adventures,
  Exploration,
  CityDown,
  Cammping,
  GardenPark,
  Recovery,
  Therapy
}

class Places {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> activities;
  final List<String> description;
  final String mapUrl;
  final PlaceType placeType;
  final bool isTrending;
  final bool isBeach;
  final bool isActivities;
  final bool isResturant;
  final bool isHotel;

  const Places({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.activities,
    required this.description,
    required this.mapUrl,
    required this.placeType,
    required this.isTrending,
    required this.isBeach,
    required this.isActivities,
    required this.isResturant,
    required this.isHotel,
  });
}
