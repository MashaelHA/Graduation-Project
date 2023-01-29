// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../models/place.dart';
import '../../data/app_data.dart';
import '../../utils/app_export.dart';
import '../../utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class PlacesDetails extends StatefulWidget {
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
  State<PlacesDetails> createState() => _PlacesDetailsState();
}

class _PlacesDetailsState extends State<PlacesDetails> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final SelectedPlaces = PlaceType_data.firstWhere((place) => place.id == widget.id);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.title)
            ],
            ),
            backgroundColor: kPrimaryColor.withOpacity(0.5),
            toolbarHeight: 40,
      ),
      backgroundColor: ColorConstant.fromHex('#f9f9f9'),
      body: 
      
      Column(
        //  mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //       SafeArea(
          // child: Scaffold(
          //   backgroundColor: ColorConstant.fromHex('#f9f9f9'),
          //   body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getVerticalSize(
                      435.00,
                    ),
                    width: getHorizontalSize(
                      376.00,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: getVerticalSize(
                              26.00,
                            ),
                            width: getHorizontalSize(
                              281.00,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    ColorConstant.fromHex('#7f2a3c4c')
                                        .withOpacity(0.4),
                                    ColorConstant.fromHex('#7f2a3c4c')
                                        .withOpacity(0.1),
                                  ],
                                  stops: const [
                                    0.2,
                                    0.005
                                  ]),
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  13.00,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: getVerticalSize(
                              421.00,
                            ),
                            width: getHorizontalSize(
                              376.00,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(
                                        getHorizontalSize(
                                          32.00,
                                        ),
                                      ),
                                      bottomRight: Radius.circular(
                                        getHorizontalSize(
                                          32.00,
                                        ),
                                      ),
                                    ),
                                    ),
                                  child: Image.network(
                                    SelectedPlaces.imageUrlPlace,
                                    height: getVerticalSize(
                                      421.00,
                                    ),
                                    width: getHorizontalSize(
                                      376.00,
                                    ),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    ),
                                ),
                                // CustomImageView(
                                //   imagePath: ImageConstant.imgImage,
                                //   height: getVerticalSize(
                                //     421.00,
                                //   ),
                                //   width: getHorizontalSize(
                                //     376.00,
                                //   ),
                                //   radius: BorderRadius.only(
                                //     bottomLeft: Radius.circular(
                                //       getHorizontalSize(
                                //         32.00,
                                //       ),
                                //     ),
                                //     bottomRight: Radius.circular(
                                //       getHorizontalSize(
                                //         32.00,
                                //       ),
                                //     ),
                                //   ),
                                //   alignment: Alignment.center,
                                // ),
                              ],
                            ),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.topLeft,
                        //   child: IconButton(
                        //     onPressed: () {},
                        //     icon: const Padding(
                        //       padding: EdgeInsets.symmetric(vertical: 30),
                        //       child: Icon(
                        //         Icons.arrow_forward_ios,
                        //         color: Colors.white,
                        //         size: 30,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 19,
                      top: 16,
                      right: 21,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: SelectedPlaces.title,
                                      style: TextStyle(
                                        color: ColorConstant.fromHex('#1e1c66'),
                                        fontSize: getFontSize(
                                          28,
                                        ),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        height: getVerticalSize(
                                          1.11,
                                        ),
                                      ),
                                    ),
                                    // TextSpan(
                                    //   text: "msg2".tr,
                                    //   style: TextStyle(
                                    //     color: ColorConstant.indigo900,
                                    //     fontSize: getFontSize(
                                    //       20,
                                    //     ),
                                    //     fontFamily: 'Montserrat',
                                    //     fontWeight: FontWeight.w400,
                                    //     height: getVerticalSize(
                                    //       1.11,
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                                textAlign: TextAlign.right,
                              ),
                              // Padding(
                              //   padding: getPadding(
                              //     top: 3,
                              //     left: 5,
                              //   ),
                              //   child: 
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: getPadding(top: 3, right: 5),
                                      child: IconButton(
                            // ignore: deprecated_member_use
                            onPressed: () => launch(SelectedPlaces.mapUrl),
                            icon: 
                               const Icon(
                                Icons.location_on_outlined,
                                color: SecondaryYellow,
                                size: 30,
                              ),
                            
                          ),
                                    ),
                                    // Icon(
                                    //   Icons.location_on_outlined,
                                    //   color: Colors.yellow, //SecondaryYellow,
                                    //   size: 30,
                                    // ),
                                    Text(
                                      SelectedPlaces.cityName,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              // ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                            left: 5,
                          ),
                          child: CircleAvatar(
                      radius: 17,
                      backgroundColor: SecondaryPink.withOpacity(0.2),
                      child: const Icon(
                            Icons.favorite,
                            color: SecondaryPink,
                            size: 20,
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: getHorizontalSize(
                      322.00,
                    ),
                    // margin: getMargin(
                    //   top: 31,
                    // ),
                    // child: ListView.builder(
                    //   itemCount: SelectedPlaces.description.length,
                    //   itemBuilder: (ctx, index) => Card(
                    //     child: Text(
                    //     SelectedPlaces.description[index],
                    //     maxLines: null,
                    //     textAlign: TextAlign.right,
                    //   ),
                    //   ),
                      child: Text(
                        SelectedPlaces.description[0],
                        maxLines: null,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  // ),
                  Container(
                    width: getHorizontalSize(
                      378.00,
                    ),
                    margin: getMargin(
                      top: 26,
                    ),
                    padding: getPadding(
                      left: 33,
                      top: 15,
                      right: 33,
                      bottom: 15,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            309.00,
                          ),
                          margin: getMargin(
                            bottom: 57,
                          ),
                          padding: getPadding(
                            left: 30,
                            // top: 30,
                            right: 30,
                            bottom: 12,
                          ),
                          child: SizedBox(
                            width: 500,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                backgroundColor: SecondaryPink,
                                minimumSize: const Size(double.infinity, 50),
                              ),
                              child: const Text('أضف إلى الخطة',
                                  style: TextStyle(
                                      fontSize:
                                          20) //Theme.of(context).textTheme.subtitle2,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
