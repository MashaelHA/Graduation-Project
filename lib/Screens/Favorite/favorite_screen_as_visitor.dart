// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../home/components/header.dart';
import '../../utils/constants.dart';
import '../Welcome/welcome_screen.dart';

class FavoraiteVistor extends StatelessWidget {
  // const Favoraite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    Widget bigCircle = new Container(
      width: 150.0,
      height: 150.0,
      // ignore: prefer_const_constructors, unnecessary_new
      decoration: new BoxDecoration(
        // ignore: use_full_hex_values_for_flutter_colors
        color: const Color(0xFF80FFC845),
        shape: BoxShape.circle,
      ),
    );
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          Header(),
          SizedBox(
            child: Text(
              'المفضلة',
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.right,
            ),
          ),
          SizedBox(
            child: Text(
              'عدد المفضلات',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.right,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          SizedBox(
            child: Stack(
              children: [
                bigCircle,
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: SecondaryYellow,
                    child: Icon(
                      Icons.favorite_border,
                      color: kPrimaryColor,
                      size: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Text(
              'قم بإنشاء حساب واختر اهتماماتك',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    // side: BorderSide(width: 1.0, color: Colors.black),
                    borderRadius: BorderRadius.circular(25)),
                backgroundColor: const Color(0xFF1E1C66).withOpacity(0.5),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('تسجيل الدخول',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'SST-Arabic-Roman',
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: SecondaryPink.withOpacity(0.6),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
