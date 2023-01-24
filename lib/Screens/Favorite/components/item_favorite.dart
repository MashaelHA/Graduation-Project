// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project_visitor_to_eastrn/constants.dart';
import 'package:project_visitor_to_eastrn/models/survey.dart';

import '../../../app_data.dart';
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
//   List<Category> Cateegories_data = [
//    Category(
//     id: 'c1',
//     title: 'الأنشطة',
//     imageUrl:
//         'https://www.ootlah.com/wp-content/uploads/2022/08/2-halfmoon_0007_WhatsApp-Image-2022-04-29-at-4.06.28-PM-1.jpg',
//   ),
//    Category(
//     id: 'c2',
//     title: 'المغامرات',
//     imageUrl:
//         'https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_1920,c_scale,q_auto/cnnarabic/2019/03/12/images/123513.jpg',
//   ),
//    Category(
//     id: 'c3',
//     title: 'تأمل الطبيعة',
//     imageUrl:
//         'http://www.asdaa-okazz.com/uploads/original_images/c0407cO_O20a1d556-c1a3-498c-b888-a13228e6e7bc.jpeg',
//   ),
//    Category(
//     id: 'c4',
//     title: 'التجول في المدن',
//     imageUrl: 'https://www.cruisemapper.com/images/ports/10144-bc7d0d8647.jpg',
//   ),
//  Category(
//     id: 'c5',
//     title: 'التخييم',
//     imageUrl:
//         'https://img.rezdy.com/PRODUCT_IMAGE/13699/emptyquarter_gallery_11_lg.jpg',
//   ),
//  Category(
//     id: 'c6',
//     title: 'التنزه في الحدائق',
//     imageUrl:
//         'https://www.trfihi-parks.com/images/parks/LjLa8D_1537844822_1.jpg',
//   ),
// ];

  @override
  Widget build(BuildContext context) {
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
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.ootlah.com/wp-content/uploads/2022/08/2-halfmoon_0007_WhatsApp-Image-2022-04-29-at-4.06.28-PM-1.jpg"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    child: ListTile(
                      title: const Text('jj'),
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
