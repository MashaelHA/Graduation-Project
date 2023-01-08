// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:project_visitor_to_eastrn/Screens/Welcome/components/background.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_visitor_to_eastrn/constants.dart';
import 'package:project_visitor_to_eastrn/components/rounded_button.dart';
import 'package:project_visitor_to_eastrn/Router.dart';
import 'package:project_visitor_to_eastrn/Screens/Welcome/components/register.dart';

// var _isObscured;

// @override
// void initSatete() {
//   super.initState();

//   _isObscured = true;
// }

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/images/favicon.png",
              height: size.height * 0.31,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                style: const TextStyle(
                  color: kPrimaryLightColor,
                ),
                decoration: const InputDecoration(
                  hintText: 'username@gmail.com',
                  border: UnderlineInputBorder(),
                  labelText: 'الايميل',
                  labelStyle: TextStyle(
                    color: kPrimaryLightColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: TextStyle(
                    color: kPrimaryLightColor,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: kPrimaryLightColor, width: 2.0)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFFF234F), width: 2.0)),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                // obscureText: _isObscured,
                style: const TextStyle(
                  color: kPrimaryLightColor,
                ),
                decoration: const InputDecoration(
                  // suffixIcon: IconButton(
                  //   padding: const EdgeInsetsDirectional.only(end: 12.0),
                  //   icon: _isObscured ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                  //    onPressed: (){
                  //     setState((){
                  //       _isObscured =!_isObscured;
                  //     });
                  //    }
                  //   ),
                  hintText: '********',
                  border: UnderlineInputBorder(),
                  labelText: 'كلمة المرور',
                  labelStyle: TextStyle(
                    color: kPrimaryLightColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: TextStyle(
                    color: kPrimaryLightColor,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: kPrimaryLightColor, width: 2.0)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFFF234F), width: 2.0)),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "تسجيل الدخول",
              color: kPrimaryLightColor,
              textColor: const Color(0xFFFF234F),
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute()));
              },
            ),

            SizedBox(
              height: size.height * 0.05,
              child: TextButton(
              onPressed: () {},
              child: const Text(
                "نسيت كلمة المرور",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryLightColor,
                ),
              ),
            ),
            ),

            // const Text(
            //   "نسيت كلمة المرور",
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     color: kPrimaryLightColor,
            //   ),
            // ),
            RoundedButton(
              text: "إنشاء حساب جديد",
              color: kPrimaryLightColor,
              textColor: const Color(0xFFFF234F),
              press: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const Register()));
              },
            ),
            SizedBox(
              height: size.height * 0.001,
              // width: size.width * 0.005,
            ),
            SizedBox(
              width: 150,
              child: RoundedButton(
                text: "الدخول كزائر",
                style: ButtonStyle(
                    // ignore: prefer_const_constructors
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.pink), foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 3, 255, 255))),
                // color: kPrimaryColor,
                // textColor: const Color(0xFF1F80BD),
                press: () {
                  // ignore: avoid_print
                  print("login as visitor");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
