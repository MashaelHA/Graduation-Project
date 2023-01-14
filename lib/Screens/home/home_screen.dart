
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widgets/changepagecontroler.dart';

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
        shape: CircularNotchedRectangle(),
        
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            height: 70,
            child: Column(
              children: [
                Row(
                  
                  children: [
                    MaterialButton(
                      onPressed:(){
                        controller.chngepage(0);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.home,color: controller.currentpage==0 ? Colors.blue[600] : Colors.grey ,size: width/15,),
                          
                        ],
                      ),
                    ),
        
        
        
                    MaterialButton(
                      
                      onPressed:(){controller.chngepage(1);},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.punch_clock_outlined,color: controller.currentpage==1 ? Colors.blue[600] : Colors.grey ,size: width/15),
                          
                        ],
                      ),
                    ),
                    
        
        
        
                    
                    MaterialButton(
                      onPressed:(){
                        
                        controller.chngepage(2);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.calendar_month_rounded,color: controller.currentpage==2 ? Colors.blue[600] : Colors.grey,size: width/15),
                          
                        ],
                      ),
                    ),
        
                    MaterialButton(
                      onPressed:(){
                        controller.chngepage(3);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.heart_broken,color: controller.currentpage==3 ?Colors.blue[600] : Colors.grey ,size: width/15),
                          
                        ],
                      ),
                    ),
        
                    MaterialButton(
                      onPressed:(){
                        controller.chngepage(4);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.person,color: controller.currentpage==4 ? Colors.blue[600] : Colors.grey ,size: width/15),
                          
                        ],
                      ),
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
        )
      
      ),
      body: controller.listpage.elementAt(controller.currentpage),
    )
    );
  }
}