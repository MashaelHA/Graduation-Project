// ignore_for_file: constant_identifier_names

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
  final String cityName;
  final String title;
  final String imageUrlPlace;
  final List<String> description;
  final String mapUrl;
  final String evaluation;
  final PlaceType placeType;
  final bool isTrending;
  final bool isBeach;
  final bool isActivities;
  final bool isResturant;
  final bool isHotel;

  const Places({
    required this.id,
    required this.categories,
    required this.cityName,
    required this.title,
    required this.imageUrlPlace,
    required this.description,
    required this.mapUrl,
    required this.evaluation,
    required this.placeType,
    required this.isTrending,
    required this.isBeach,
    required this.isActivities,
    required this.isResturant,
    required this.isHotel,
  });
}
