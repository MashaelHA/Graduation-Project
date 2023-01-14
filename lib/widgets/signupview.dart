import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 2,
          elevation: 0,
          backgroundColor: Colors.white,
          
          bottom: TabBar(
            indicatorColor: Colors.red,
            indicatorWeight: 5,
            tabs: [
            Tab(child: Text("تسجيل",style: TextStyle(color: Colors.grey,fontSize: 25),),),
            Tab(child: Text("تسجيل الدخول",style: TextStyle(color: Colors.grey,fontSize: 25),),),
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(height: height/45,),
                  form(name,"الاسم", TextInputType.name),
                  SizedBox(height: height/45,),
                  form(email,"الايميل", TextInputType.emailAddress),
                  SizedBox(height: height/45,),
                  form(phone,"الهاتف", TextInputType.phone),
                  SizedBox(height: height/45,),
                  form(password,"كلمة المرور", TextInputType.visiblePassword),
                  SizedBox(height: height/45,),
                  form(cpassword,"تاكيد كلمة المرور", TextInputType.visiblePassword),
                  SizedBox(height: height/45,),
                  button("تسجيل")
                ],
              ),
            )
           ,
            Text("تسجيل")
          ],
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
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.grey)),
              
              hintText: Title,
              hintStyle:
                  TextStyle(color: Color(0xff8c9289), fontFamily: 'Cobe'),
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
      padding: EdgeInsets.all(15),
      child: ElevatedButton(
          onPressed: () {
             loginUser();
          },
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  // side: BorderSide(width: 1.0, color: Colors.black),
                  borderRadius: BorderRadius.circular(25)),
              minimumSize: const Size(double.infinity, 50),
              primary: Color.fromARGB(255, 27, 24, 91),)),
    );
  }


   void loginUser() async {
    String _email = email.text.trim();
    String _password = password.text.trim();
    

    if (_email.isEmpty) {
      print("USER_NAME_MUST_BE_REQUIRED");
    } else if (_password.isEmpty) {
      print("PASSWORD_MUST_BE_REQUIRED");
    } else {
      
    }
  }
  
}