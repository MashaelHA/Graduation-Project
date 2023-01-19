import 'package:flutter/material.dart';

import '../../../constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
    this.topImage = "assets/favicon.png",
  }) : super(key: key);

  final String topImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryColor,
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 5,
              // left: 0,
              child: Image.asset(
                topImage,
                width: 400,
              ),
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
