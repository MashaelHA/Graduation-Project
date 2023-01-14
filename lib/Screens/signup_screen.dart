// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import '../widgets/signupview.dart';

class SignUp extends StatelessWidget {
  // const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color.fromARGB(255, 27, 24, 91),//rgba(27,24,91,255)
      body: Container(
        child: Column(
          children: [
            SizedBox(height: height/30,),
            Container(
              height: 200,
              alignment: Alignment.center,
              child: Image.asset("assets/icons/favicon.png")),
              // ignore: prefer_const_constructors
              Text("Visitors to eastern",style: TextStyle(color: Colors.white,fontSize: 25),),
              
              SizedBox(height: height/20,),
              // ignore: sized_box_for_whitespace
              Container(
                height: height/16,
                width: width/2.5,
                child: MaterialButton(
                  // ignore: prefer_const_constructors, sort_child_properties_last
                  child: Text("تسجيل الدخول"),
                  color: Colors.white,
                  onPressed: (){
                     var snackbar=SnackBar(
                      shape: RoundedRectangleBorder(
                      // ignore: prefer_const_constructors
                      side: BorderSide(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(24),
                      ),
                    // ignore: prefer_const_constructors
                    duration: Duration(minutes: 2),
                    backgroundColor: Colors.white,
                    // ignore: sized_box_for_whitespace
                    content: Container(
                      height: height/1.6,
                      width: double.infinity,
                      
                      child:SignUpView() ,
                    )
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }),
              )
          ],
        ),
      ),
    );
  }



  
}