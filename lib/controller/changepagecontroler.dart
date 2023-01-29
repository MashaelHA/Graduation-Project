import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../Screens/home/home_screen.dart';
import '../Screens/Discover/discover_screen.dart';
import '../Screens/plane/plane_screen.dart';
import '../Screens/Favorite/favorite_screen.dart';
import '../Screens/account/account_screen.dart';



abstract class ChangePageController extends GetxController{
    chngepage(int currentpage);
}
class ChangePageControllerImpl extends ChangePageController{
  @override
  chngepage(int currentpage) {
    this.currentpage=currentpage;
    update();
    // ignore: avoid_print
    print(currentpage);
  }
   

  
    int currentpage=0;
    List <Widget> listpage = [
      HomePage(id: 'id', nameCity: 'nameCity', titlePlace: 'titlePlace', imageUrlPlace: 'imageUrlPlace', evaluation: 'evaluation'),
      Discover(),
      Plan(),
      // ignore: prefer_const_constructors
      Favoraite(id: '11',title: 'k',imageUrl: 'uio',),
      Account(),
    ];
  }
  
