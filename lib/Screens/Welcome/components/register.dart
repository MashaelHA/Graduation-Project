// // ignore_for_file: unused_local_variable

// import 'package:flutter/material.dart';
// import 'package:project_visitor_to_eastrn/Screens/Welcome/components/background.dart';
// // ignore: import_of_legacy_library_into_null_safe
// // import 'package:flutter_svg/flutter_svg.dart';

// class Register extends StatefulWidget {
//   const Register({Key? key}) : super(key: key);

//   @override
//   State<Register> createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
//   // ignore: unused_field
//   final _formKey = GlobalKey<FormState>();
//   // ignore: unnecessary_new
//   // final allNameEditingController = new TextEditingController();
//   // // ignore: unnecessary_new
//   // final emailNameEditingController = new TextEditingController();
//   // // ignore: unnecessary_new
//   // final phoneNumerNameEditingController = new TextEditingController();
//   // // ignore: unnecessary_new
//   // final passwordNameEditingController = new TextEditingController();
//   // // ignore: unnecessary_new
//   // final confirmPasswordNameEditingController = new TextEditingController();
  
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }

// @override
// Widget build(BuildContext context) {
//     // ignore: unnecessary_new
//   final allNameEditingController = new TextEditingController();
//   // ignore: unnecessary_new
//   final emailNameEditingController = new TextEditingController();
//   // ignore: unnecessary_new
//   final phoneNumerNameEditingController = new TextEditingController();
//   // ignore: unnecessary_new
//   final passwordNameEditingController = new TextEditingController();
//   // ignore: unnecessary_new
//   final confirmPasswordNameEditingController = new TextEditingController();

//   final nameField = TextFormField(
//       autofocus: false,
//       controller: allNameEditingController,
//       keyboardType: TextInputType.name,
//       onSaved: (value) {
//         allNameEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         // prefixIcon: Icon(icon.mail),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "ادخل الاسم",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ));

//   final emailField = TextFormField(
//       autofocus: false,
//       controller: emailNameEditingController,
//       keyboardType: TextInputType.emailAddress,
//       onSaved: (value) {
//         emailNameEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         // prefixIcon: Icon(icon.mail),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "ادخل الايميل",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ));



//       final phoneField = TextFormField(
//       autofocus: false,
//       controller: phoneNumerNameEditingController,
//       keyboardType: TextInputType.number, 
//       onSaved: (value) {
//         phoneNumerNameEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         // prefixIcon: Icon(icon.mail),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "ادخل رقم الجوال",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ));

//       final passwordField = TextFormField(
//       autofocus: false,
//       controller: passwordNameEditingController,
//       obscureText: true,
//       onSaved: (value) {
//         passwordNameEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         // prefixIcon: Icon(icon.mail),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "ادخل كلمة المرور",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ));

//         final confirmPasswordField = TextFormField(
//       autofocus: false,
//       controller: confirmPasswordNameEditingController,
//       obscureText: true,
//       onSaved: (value) {
//         confirmPasswordNameEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.done,
//       decoration: InputDecoration(
//         // prefixIcon: Icon(icon.mail),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "ادخل تأكيد كلمة المرور",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ));


//   return Container();
//   // return Background(
//   //   child: SingleChildScrollView(
//   //     child: Column(
//   //       mainAxisAlignment: MainAxisAlignment.center,
//   //       children: <Widget>[
//   //         // SizedBox(
//   //         //   height: size.height * 0.05,
//   //         // ),
//   //         SvgPicture.asset(
//   //           "assets/icons/favicon.png",
//   //           // height: size.height * 0.25,
//   //         ),
//   //       ],
//   //     ),
//   //   ),
//   // );
// }
