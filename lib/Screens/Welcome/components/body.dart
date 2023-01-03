import 'package:flutter/material.dart';
import 'package:project_visitor_to_eastrn/Screens/Welcome/components/background.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_visitor_to_eastrn/constants.dart';
import 'package:project_visitor_to_eastrn/components/rounded_button.dart';

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
              "assets/icons/favicon.png",
              height: size.height * 0.25,
            ),
           
           

           SizedBox(
             width: 400,
             child: TextFormField(
               style: const TextStyle(
                    color: kPrimaryLightColor,
                  ),
                decoration:const InputDecoration(
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
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: kPrimaryLightColor,width: 2.0)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Color(0xFFFF234F),width: 2.0)),

                ),
              ),
           ),


             SizedBox(
             width: 400,
             child: TextFormField(
               style: const TextStyle(
                    color: kPrimaryLightColor,
                  ),
                decoration:const InputDecoration(
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
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: kPrimaryLightColor,width: 2.0)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Color(0xFFFF234F),width: 2.0)),

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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute());
              },
            ),


            const Text(
              "نسيت كلمة المرور",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryLightColor,
              ),
            ),


            RoundedButton(
              text: "إنشاء حساب جديد",
              color: kPrimaryLightColor,
              textColor: const Color(0xFFFF234F),
              press: () {},
            ),


            SizedBox(
              height: size.height * 0.1,
            ),


            SizedBox(
              width: 150,
                child: RoundedButton(
                  text: "الدخول كزائر",
                  // color: kPrimaryColor,
                  // textColor: const Color(0xFF1F80BD),
                  press: () {},
               ),
             )
          ],
        ),
      ),
    );
  }
}
