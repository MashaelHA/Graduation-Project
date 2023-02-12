// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../../data/firebaseauth.dart';

import '../../../utils/constants.dart';
import '../../../widgets/signupview.dart';
import '../../home/components/visitor_home_page.dart';
import 'background.dart';

Firebaseauth firebasecontroller = Firebaseauth();
TextEditingController email = TextEditingController();

TextEditingController password = TextEditingController();

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
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
              height: size.height * 0.4,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: email,
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
                controller: password,
                style: const TextStyle(
                  color: kPrimaryLightColor,
                ),
                decoration: const InputDecoration(
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
                  loginUser(context);
                },
                child: Text(
                  'تسجيل الدخول',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "       ",
                  // "نسيت كلمة المرور",
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
                  style: Theme.of(context).textTheme.headlineSmall,
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
                    context,
                    MaterialPageRoute(
                      builder: (context) => VisitorHomePage(),
                    ),
                  );
                },
                child: Text(
                  'الدخول كزائر',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loginUser(context) async {
    String _email = email.text.trim();
    String _password = password.text.trim();

    if (_email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          'EMAIL MUST BE REQUIRED',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.red,
      ));
    } else if (_password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          'PASSWORD MUST BE REQUIRED',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.red,
      ));
    } else if (!EmailValidator.validate(email.text)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          'input a valid email',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.red,
      ));
    } else {
      firebasecontroller.getdata(email.text, password.text, context);
    }
  }
}
