// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace, unused_import, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:project_visitor_to_eastrn/data/firebaseauth.dart';
import 'package:email_validator/email_validator.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import '../utils/constants.dart';
import '../Screens/Signup/components/survey.dart';
import '../Screens/Welcome/welcome_screen.dart';
import '../Screens/Welcome/components/background.dart';


  Firebaseauth _controller1=Firebaseauth();
class SignUpView extends StatefulWidget {
  // const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController name= TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController phone= TextEditingController();
  TextEditingController password= TextEditingController();
  TextEditingController cpassword= TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 2,
              elevation: 0,
              backgroundColor: Colors.white,
              
              bottom: TabBar(
                indicatorColor: SecondaryPink, //Colors.red,
                indicatorWeight: 5,
                tabs: [
                Tab(child: Text("تسجيل",style: Theme.of(context).textTheme.displayMedium,),),
                Tab(child: Text("تسجيل الدخول",style: Theme.of(context).textTheme.displayMedium,),),
              ]),
            ),
            body: TabBarView(
              children: [
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: height/45,),
                        form(name,"الاسم", TextInputType.name),
                        SizedBox(height: height/50,),
                        form(email,"الايميل", TextInputType.emailAddress),
                        SizedBox(height: height/50,),
                        form(phone,"الهاتف", TextInputType.phone),
                        SizedBox(height: height/50,),
                        form(password,"كلمة المرور", TextInputType.visiblePassword),
                        SizedBox(height: height/50,),
                        form(cpassword,"تاكيد كلمة المرور", TextInputType.visiblePassword),
                        SizedBox(height: height/55,),
                        button("تسجيل")
                      ],
                    ),
                  ),
                )
               ,
                // Text("تسجيل")
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                     
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                       Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WelcomeScreen()));
                    },
                    child: Text(
                      ' اضغط هنا لتسجيل الدخول',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),//
                ),
              ],
            ),
            
          ),
        ),
    );
  }


  Column form(controllerText, String Title, TextInputType type) {
    return Column(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          child: TextFormField(
             textAlign: TextAlign.right,
            
            keyboardType: type,
            cursorColor: Colors.black,
            controller: controllerText,
            decoration: InputDecoration(
              
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              filled: true,
              fillColor: kPrimaryLightColor,//Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.grey)),
              
              hintText: Title,
              hintStyle:
                  const TextStyle(color: Color(0xff8c9289), fontFamily: 'Fontspring-DEMO-biotif'),
            ),
          ),
        ),
      ],
    );
  }

  Widget button(
    String title,
  ) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
          onPressed: () {
             loginUser(context);
          },
          // ignore: sort_child_properties_last
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 25,
              color: kPrimaryLightColor, // Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  // side: BorderSide(width: 1.0, color: Colors.black),
                  borderRadius: BorderRadius.circular(25)), 
                  backgroundColor: kPrimaryColor,
              minimumSize: const Size(double.infinity, 50), // Color.fromARGB(255, 27, 24, 91),
              ),
              ),
    );
  }


   void loginUser(context) async {
    String _email = email.text.trim();
    String _password = password.text.trim();
    String _phone = phone.text.trim();
    String _name= name.text.trim();
    String _cpassword = cpassword.text.trim();

      if (_email.isEmpty) {
     AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.bottomSlide,
        title: 'Email must be required',
        // btnOkOnPress: () {},
      ).show();
    } else if (_password.isEmpty) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.bottomSlide,
        title: 'password must be required',
        // btnOkOnPress: () {},
      ).show();
    } 
    else if (_name.isEmpty) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.bottomSlide,
        title: 'Name must be required',
        // btnOkOnPress: () {},
      ).show();
    }else if (_phone.isEmpty) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.bottomSlide,
        title: 'phone must be required',
        // btnOkOnPress: () {},
      ).show();
    }else if (_cpassword.isEmpty) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.bottomSlide,
        title: 'Cpassword must be requied',
        // btnOkOnPress: () {},
      ).show();
    }
    else if (!EmailValidator.validate(email.text)) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.bottomSlide,
        title: 'Input a valid email',
        // btnOkOnPress: () {},
      ).show();
    }
    else if (password.text!=cpassword.text) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.bottomSlide,
        title: 'passwords ard not matching',
        // btnOkOnPress: () {},
      ).show();
    }
    else if (phone.text.length!=10) {
      // ignore: avoid_print
      print(phone.text.length);
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.bottomSlide,
        title: 'phone number must be 10 digits',
        // btnOkOnPress: () {},
      ).show();
    }
    else {
      _controller1.postdata(email.text, name.text, password.text, phone.text);
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            //  loginUser();
            Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SurveyPage()));
                  
    }
  }
  
}