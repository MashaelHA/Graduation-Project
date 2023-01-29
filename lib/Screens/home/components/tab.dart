
// ignore_for_file: sized_box_for_whitespace, unnecessary_import, implementation_imports, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../controller/changepagecontroler.dart';
import '../../../utils/constants.dart';

class ChangePage extends StatelessWidget {
  // const ChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Get.put(ChangePageControllerImpl());
    return GetBuilder<ChangePageControllerImpl>(
      builder: (controller)=>
      Scaffold(
      bottomNavigationBar: BottomAppBar(
        
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            height: 70,
            child: Column(
              children: [
                Row(
                //  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: width/5,
                      onPressed:(){
                        controller.chngepage(0);
                      },
                      child: Icon(Icons.home,color: controller.currentpage==0 ? const Color.fromARGB(255, 13, 9, 65) : Colors.grey ,size: width/17,),
                    ),
        
        
        
                    MaterialButton(
                      minWidth: width/5,
                      onPressed:(){controller.chngepage(1);},
                      child: Icon(Icons.explore_outlined,color: controller.currentpage==1 ? const Color.fromARGB(255, 13, 9, 65): Colors.grey ,size: width/17),
                    ),
                    
        
        
        
                    
                    MaterialButton(
                      minWidth: width/5,
                      onPressed:(){
                        
                        controller.chngepage(2);
                      },
                      child: Icon(Icons.calendar_month_rounded,color: controller.currentpage==2 ? const Color.fromARGB(255, 13, 9, 65) : Colors.grey,size: width/17),
                    ),
        
                    MaterialButton(
                      minWidth: width/5,
                      onPressed:(){
                        controller.chngepage(3);
                      },
                      child: Icon(Icons.favorite_border_rounded,color: controller.currentpage==3 ?const Color.fromARGB(255, 13, 9, 65) : Colors.grey ,size: width/17),
                    ),
        
                    MaterialButton(
                      minWidth: width/5,
                      onPressed:(){
                        controller.chngepage(4);
                      },
                      child: Icon(Icons.person,color: controller.currentpage==4 ? const Color.fromARGB(255, 13, 9, 65) : Colors.grey ,size: width/17),
                    ),
        
                    
                  ],
                ),
                SizedBox(height: height/60,),
               Container(
                
                width: width/2,
                height: 4,color: Colors.black,)
              ],
            ),
          ),
        ),
      
      ),
      body: controller.listpage.elementAt(controller.currentpage),
    )
    );
  }
}