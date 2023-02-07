// ignore_for_file: unnecessary_import, implementation_imports, unused_import, use_key_in_widget_constructors, override_on_non_overriding_member, annotate_overrides, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/app_data.dart';
import '../../../models/place.dart';
import '../../../utils/constants.dart';
import '../../../widgets/photoviewer.dart';
import '../../Welcome/components/body.dart';

class VisitorHomePage extends StatefulWidget {
  // const HomePage({super.key});
  bool isFavorite = true;

  @override
  State<VisitorHomePage> createState() => _HomePageState();
}

List<Places> placelist = [];

late List<bool> isFavorite;

class _HomePageState extends State<VisitorHomePage> {
  bool isloading = false;
  getplaces(String title) async {
    isFavorite = [];
    placelist = [];
    if (title == "مطاعم") {
      for (var i = 0; i < PlaceType_data.length; i++) {
        if (PlaceType_data[i].isResturant) {
          placelist.add(PlaceType_data[i]);
        }
      }
    } else if (title == "انشطة") {
      for (var i = 0; i < PlaceType_data.length; i++) {
        if (PlaceType_data[i].isActivities) {
          placelist.add(PlaceType_data[i]);
        }
      }
    } else if (title == "شواطئ") {
      for (var i = 0; i < PlaceType_data.length; i++) {
        if (PlaceType_data[i].isBeach) {
          placelist.add(PlaceType_data[i]);
        }
      }
    } else if (title == "شائع") {
      for (var i = 0; i < PlaceType_data.length; i++) {
        if (PlaceType_data[i].isTrending) {
          placelist.add(PlaceType_data[i]);
        }
      }
    } else {}

    isFavorite = List<bool>.filled(placelist.length, false);
  }

  @override
  void initState() {
    getplaces("مطاعم");

    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  int currentindex = 0;
  String title = "شائع";
  List<String> items = ["شائع", "شواطئ", "انشطة", "مطاعم"];
  List<Icon> iconsitem = [
    Icon(Icons.local_fire_department_outlined, color: Colors.blue),
    Icon(Icons.beach_access_outlined, color: Colors.blue),
    Icon(Icons.line_weight_outlined, color: Colors.blue),
    Icon(Icons.restaurant, color: Colors.blue)
  ];

  List<String> photoitems = [
    "khabar.PNG",
    "first.jpg",
    "khabar.PNG",
    "first.jpg"
  ];
  MyCustomWidget customwid = MyCustomWidget();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    // ignore: non_constant_identifier_names
    // final SelectedPlaces = PlaceType_data.firstWhere((place) => place.id == place.id);

    //  final filterdPlaces = PlaceType_data.where((place) {
    //   return place.categories.contains(place.id);
    // }).toList();

    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(
          // padding: EdgeInsets.only(right: 10, top: 18),
          child: Padding(
            padding: const EdgeInsets.only(right: 10, top: 18),
            child: Column(
              children: [
                SizedBox(
                  width: width / 2,
                ),
                const SizedBox(
                  width: 30,
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                  width: width / 2,
                ),
                const SizedBox(
                  width: 100,
                ),
                    CircleAvatar(
                        backgroundImage: AssetImage('assets/favicon.png'))
                  ],
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "إلى أين تريد\nالذهاب؟",
                      style: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.start,
                    )),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "قم بإنشاء حساب واختر اهتماماتك",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                    )),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 230,
                  width: 600,
                  child: customwid,
                ),
                Container(
                  padding: EdgeInsets.only(right: width / 2.5),
                  alignment: Alignment.center,
                  height: 20,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index1) {
                      return Icon(
                        Icons.circle,
                        size: 10,
                        color: index1 == currentindex
                            ? Colors.red
                            : Colors.grey[300],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height / 22,
                  width: double.infinity,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 20,
                      );
                    },
                    // reverse: true,
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(5),
                        height: 20,
                        width: width / 4,
                        decoration: BoxDecoration(
                          color: title == items[index]
                              ? Color.fromARGB(255, 235, 81, 70)
                              : Colors.white,
                          border: Border.all(
                              color: Color.fromARGB(255, 216, 230, 240)),
                          borderRadius: BorderRadius.all(Radius.circular(
                                  7.0) //                 <--- border radius here
                              ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                currentindex = index;
                                title = items[index];
                                getplaces(title);
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  items[index],
                                  style: TextStyle(
                                      color: title == items[index]
                                          ? Colors.white
                                          : Colors.blue),
                                ),
                                //SizedBox(width: width/18,),
                                iconsitem[index]
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: height / 4.2,
                  width: double.infinity,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 20,
                      );
                    },
                    // reverse: true,
                    itemCount: placelist.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: SizedBox(
                          width: width / 1.7,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Color.fromARGB(255, 230, 222, 222),
                                ),
                                borderRadius: BorderRadius.circular(20.0)),
                            color: Colors.white,
                            child: Column(
                              children: [
                                Stack(children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    //padding: EdgeInsets.all(1),
                                    margin: EdgeInsets.all(6),
                                    height: height / 6.8,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Image.network(
                                        //.asset(
                                        //"assets/images/${photoitems[index]}",
                                        placelist[index].imageUrlPlace,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // padding: EdgeInsets.all(3),
                                    margin: EdgeInsets.all(9),
                                    // height: 25,
                                    // width: 25,
                                    //  color: Colors.grey,
                                    alignment: Alignment.topRight,
                                    child: InkWell(
                                      onTap: () async {},
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Icon(
                                          Icons.favorite,
                                          color: isFavorite[index]
                                              ? Colors.red
                                              : Colors.white,
                                          size: 20,
                                          // shadows: [],
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          placelist[index].title,
                                          // "شتوية فاردو",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: SecondaryYellow,
                                              size: 15,
                                            ),
                                            Text(
                                              placelist[index].cityName,
                                              // "الخبر الشبيلي",
                                              style: TextStyle(
                                                color: SecondaryBlue,
                                                fontSize: 12,
                                                fontFamily:
                                                    'Fontspring-DEMO-biotif',
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: width / 8,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.star_border_purple500_rounded,
                                          color: SecondaryPink,
                                        ),
                                        Text(
                                          placelist[index].evaluation,
                                          style: TextStyle(
                                            color: kPrimaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // SizedBox(
                //   height: 5,
                // ),
                MaterialButton(
                  color: Colors.red,
                  child: Text("register now to enjoy the services"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Body(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
