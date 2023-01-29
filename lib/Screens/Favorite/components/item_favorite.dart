// ignore_for_file: use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import '../../../models/survey.dart';

import '../../../data/app_data.dart';
// import '../../../models/survey.dart';
// import '../../../widgets/survey_item.dart';
import '../../../widgets/survey_item.dart';
import './favorite_items_details.dart';

// import '../../../constants.dart';

class ItemsFavorite extends StatefulWidget {
  // const ItemsFavorite({Key? key}) : super(key: key);

  final String id;
  final String title;
  final String imageUrl;

  const ItemsFavorite(this.id, this.title, this.imageUrl);

  @override
  State<ItemsFavorite> createState() => _ItemsFavoriteState();
}

class _ItemsFavoriteState extends State<ItemsFavorite> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final SelectedPlacesFavorate = Cateegories_data.firstWhere((place) => place.id == place.id);

    // final filterdFavorite = Cateegories_data.where((cat) {
    //   return cat.id.contains('other');
    // }).toList();
    return Container(
      width: 400,
      // ignore: sort_child_properties_last
      child: Stack(
        //         children: const Cateegories_data.map((categorytData) => CategoryItem( categorytData.id,categorytData.title,categorytData.imageUrl),).toList() [
        children: [
          ListView.builder(
              itemCount: Cateegories_data.length, //6
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 5,
                  child: Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          SelectedPlacesFavorate.imageUrl,
                            ),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        SelectedPlacesFavorate.title,
                        style: Theme.of(context).textTheme.bodyText1,
                        ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: kPrimaryLightColor,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FavoriteItemsDetalis(index),
                          ),
                        );
                      },
                    ),
                  ),
                );
              })
        ],
      ),

      color: const Color(0xFFD9D9D9),
    );
  }
}
