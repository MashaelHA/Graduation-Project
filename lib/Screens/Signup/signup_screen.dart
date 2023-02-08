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
            SizedBox(
              height: height / 30
            ),
             SvgPicture.asset(
              "assets/favicon.png",
              height: size.height * 0.21,
            ),
            SizedBox(
              height: height / 20,
            ),
          ],
        ),
      ),
    );
  }
}
