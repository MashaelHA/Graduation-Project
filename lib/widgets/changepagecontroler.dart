import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../Screens/home/components/homeapage.dart';



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
      HomePage(),
      HomePage(),
      HomePage(),
      HomePage(),
      HomePage(),
    ];
  }
  
