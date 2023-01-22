import 'package:flutter/material.dart';

import '../home/components/header.dart';
import '../../constants.dart';
import '../Welcome/welcome_screen.dart';

import 'components/item_favorite.dart';

class Favoraite extends StatelessWidget {
  // const Favoraite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(),
            Expanded(
              child: ItemsFavorite(),
            ),
          ],
        ),
      ),
    );
  }
}



//     Widget bigCircle = new Container(
//       width: 150.0,
//       height: 150.0,
//       decoration: new BoxDecoration(
//         color: Color(0xFF80FFC845),
//         shape: BoxShape.circle,
//       ),
//     );
//     return Container(
//       child: Column(
//         children: [
//           Header(),
//           SizedBox(
//             child: Text(
//               'المفضلة',
//               style: Theme.of(context).textTheme.headline2,
//               textAlign: TextAlign.right,
//             ),
//           ),
//           SizedBox(
//             child: Text(
//               'عدد المفضلات',
//               style: Theme.of(context).textTheme.headline4,
//               textAlign: TextAlign.right,
//             ),
//           ),
//           const SizedBox(
//             height: 80,
//           ),
//           SizedBox(
//             child: Stack(
//               children: [
//                 bigCircle,
//                 const Padding(
//                   padding: EdgeInsets.all(15.0),
//                   child: CircleAvatar(
//                     radius: 60,
//                     backgroundColor: SecondaryYellow,
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: kPrimaryColor,
//                       size: 100,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           SizedBox(
//             child: Text(
//               'قم بإنشاء حساب واختر اهتماماتك',
//               style: Theme.of(context).textTheme.headlineLarge,
//             ),
//           ),

//           const SizedBox(
//             height: 50,
//           ),


//           SizedBox(
//             width: 300,
//             child: ElevatedButton(
//               onPressed: () {
//                  Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => WelcomeScreen()));
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: RoundedRectangleBorder(
//                     // side: BorderSide(width: 1.0, color: Colors.black),
//                     borderRadius: BorderRadius.circular(25)),
//                 backgroundColor: Color(0xFF1E1C66).withOpacity(0.5),
//                 minimumSize: const Size(double.infinity, 50),
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   const Text('تسجيل الدخول',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontFamily: 'SST-Arabic-Roman',
//                       )),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   SizedBox(
//                     child: CircleAvatar(
//                       radius: 17,
//                       backgroundColor: SecondaryPink.withOpacity(0.6),
//                       child: const Icon(
//                         Icons.arrow_forward_ios,
//                         size: 24.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
