// ignore_for_file: unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project_visitor_to_eastrn/data/firebaseauth.dart';

import '../../data/app_data.dart';
import '../../models/place.dart';
import '../home/components/header.dart';
import '../../utils/constants.dart';
import '../Welcome/welcome_screen.dart';

import 'components/item_favorite.dart';

class Favoraite extends StatefulWidget {
  // const Favoraite({Key? key}) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;

  const Favoraite({
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  @override
  State<Favoraite> createState() => _FavoraiteState();
}

List<Places> items = [];

class _FavoraiteState extends State<Favoraite> {
  bool isloading = false;
  showfavorite() async {
    for (var i = 0; i < Firebaseauth.favorites.length; i++) {
      for (var j = 0; j < PlaceType_data.length; j++) {
        if (Firebaseauth.favorites[i]["place_id"] == PlaceType_data[j].id) {
          // ignore: avoid_print
          print("cityname is:");
          // ignore: avoid_print
          print(PlaceType_data[j].cityName);
          items.add(PlaceType_data[j]);
        }
      }
    }

    setState(() {
      // ignore: avoid_print
      print("loading in progress");
      isloading = true;
    });

    Firebaseauth.favorites = [];
  }

  @override
  void initState() {
    items = [];
    _controller.getfavorite();
    Future.delayed(const Duration(seconds: 4), () {
      showfavorite();
    });
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  // ignore: prefer_final_fields
  Firebaseauth _controller = Firebaseauth();
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String imageurl = '';
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Header(),
            // ignore: sized_box_for_whitespace
            if (isloading)
              SizedBox(
                height: 600,
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    // ignore: avoid_print
                    print("length is:");
                    // ignore: avoid_print
                    print(items.length);
                    return Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              // ignore: sized_box_for_whitespace
                              Container(
                                height: 70,
                                width: double.infinity,
                                child: Image.network(
                                  items[index].imageUrlPlace,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    items[index].title,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  )),
                            ],
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            else
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  CircularProgressIndicator(
                    value: 2,
                    semanticsLabel: 'Circular progress indicator',
                  ),
                  // ignore: prefer_const_constructors
                  Text("loading"),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
