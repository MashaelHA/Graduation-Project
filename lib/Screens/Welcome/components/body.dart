// ignore_for_file: unused_import

import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../widgets/signupview.dart';
import 'background.dart';
import '../../Signup/signup_screen.dart';
import '../../home/components/tab.dart';
import '../../home/home_as_visitor_screen.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
            SizedBox(
              width: size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChangePage()));
                },
                child: Text(
                  'تسجيل الدخول',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
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
            SizedBox(
              width: size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                 
                    var snackbar = SnackBar(
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
                          height: height / 1.6,
                          width: double.infinity,
                          child: SignUpView(),
                        ));
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  
                },
                child: Text(
                  'إنشاء حساب جديد',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomePageVisitor(),
                      ),)
                      ;
                },
                child: Text(
                  'الدخول كزائر',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
