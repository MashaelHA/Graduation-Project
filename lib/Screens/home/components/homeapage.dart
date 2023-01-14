// ignore_for_file: unnecessary_import, implementation_imports, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../../../widgets/photoviewer.dart';

class HomePage extends StatefulWidget {
  // const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "";
  List<String> items = ["شائع", "شواطئ", "انشطة", "مطاعم"];
  List<Icon> iconsitem = [
    const Icon(Icons.fireplace, color: Colors.blue),
    const Icon(Icons.beach_access_outlined, color: Colors.blue),
    const Icon(Icons.line_weight_outlined, color: Colors.blue),
    const Icon(Icons.restaurant, color: Colors.blue)
  ];
  List<String> photoitems = [
    "khabar.PNG",
    "first.jpg",
    "khabar.PNG",
    "first.jpg"
  ];
  MyCustomWidget customwid = MyCustomWidget();
  @override
  int count = 3;
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: 10, top: 18),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.red,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'مرحبا , محمد',
                    style: TextStyle(color: Colors.red, fontSize: 17),
                  ),
                  SizedBox(
                    width: width / 1.7,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.search,
                        size: 30,
                      ))
                ],
              ),
              //SizedBox(height: height/40,),
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
                    textAlign: TextAlign.end,
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
              Column(
                children: [
                  Container(
                    //color: Colors.red,
                    height: 230,
                    width: 600,
                    child: customwid,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: width / 2.5),
                    alignment: Alignment.center,
                    height: 20,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: customwid.getcount(),
                      itemBuilder: (context, index1) {
                        return Icon(
                          Icons.circle,
                          size: 10,
                          color:
                              index1 == count ? Colors.red : Colors.grey[300],
                        );
                      },
                    ),
                  )
                ],
              ),

              Container(
                height: height / 22,
                width: double.infinity,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                  reverse: true,
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
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              title = items[index];
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

              Container(
                height: height / 4.2,
                width: double.infinity,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                  reverse: true,
                  itemCount: photoitems.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      child: Container(
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
                                      child: Image.asset(
                                        "assets/" + photoitems[index],
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                                Container(
                                    padding: EdgeInsets.all(3),
                                    margin: EdgeInsets.all(9),
                                    height: 25,
                                    width: 25,
                                    color: Colors.grey,
                                    alignment: Alignment.topLeft,
                                    child: Image.asset(
                                      "assets/heart.png",
                                      fit: BoxFit.fill,
                                    )),
                              ]),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "4.8",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.red,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: width / 7,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("شتوية فاردو"),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "الخبر الشبيلي",
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.yellow,
                                          )
                                        ],
                                      )
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
            ],
          ),
        ),
      ),
    );
  }
}
