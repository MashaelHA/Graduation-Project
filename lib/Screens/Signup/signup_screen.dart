// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import '../../widgets/signupview.dart';
import '../Welcome/components/background.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  // const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width;
    Size? size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ignore: prefer_const_constructors
            // backgroundColor: Color.fromARGB(255, 27, 24, 91),//rgba(27,24,91,255)
            // body: Container(
            //   child: Column(
            //     children: [
            SizedBox(
              height: height / 30
            ),
             SvgPicture.asset(
              "assets/favicon.png",
              height: size.height * 0.21,
            ),
            // Container(
            //     height: 200,
            //     alignment: Alignment.center,
            //     child: Image.asset("assets/icons/favicon.png")),
            // // ignore: prefer_const_constructors
            // Text(
            //   "Visitors to eastern",
            //   style: TextStyle(color: Colors.white, fontSize: 25),
            // ),

            SizedBox(
              height: height / 20,
            ),
            // ignore: sized_box_for_whitespace
            // Container(
            //   height: height / 16,
            //   width: width / 2.5,
            //   child: MaterialButton(
            //       // ignore: prefer_const_constructors, sort_child_properties_last
            //       child: Text("تسجيل الدخول"),
            //       color: Colors.white,
            //       onPressed: () {}),
            // )
          ],
          //   ),
          // ],
        ),
      ),
    );
  }
}
