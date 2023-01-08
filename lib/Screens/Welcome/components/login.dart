// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       );
//   }
// }

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 20,
//       ),
//       width: MediaQuery.of(context).size.width,
//       child: SingleChildScrollView(
//         child: Column(children: const <Widget>[
//           TextField(
//             decoration: InputDecoration(
//               hintText: 'الايميل',
//               // prefixIcon: Icon(Icon.email),
//             ),
//           ),
//         ]),
//       ),
//     ));
//   }
// }






// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding:  const EdgeInsets.symmetric(horizontal: 20,),
//         width: MediaQuery.of(context).size.width,
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               const SizedBox(height: 50,),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'الايميل',
//                   // prefixIcon: Icon(Icon.email),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                     borderSide: BorderSide(color: Colors.blue, width: 1.0,),
//                   ),
//                   disabledBorder:  OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                     borderSide: BorderSide(color: Colors.blue, width: 1.0,),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                     borderSide: BorderSide(color: Colors.blue, width: 1.0,),
//                   ),
//                 ),
//               ),

//             ]
//             ),
//         ),
//       )
//     );
//   }
// }