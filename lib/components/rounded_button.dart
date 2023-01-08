import 'package:flutter/material.dart';
import 'package:project_visitor_to_eastrn/constants.dart';
// import 'package:project_visitor_to_eastrn/Screens/Welcome/components/body.dart';

// ignore: must_be_immutable
class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  late Color color, textColor;
  RoundedButton({
    Key? key,
    this.text = "تسجيل الدخول",
    required this.press,
    this.color = kPrimaryLightColor,
    this.textColor = Colors.pink, 
    ButtonStyle ? style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size ? size = MediaQuery.of(context).size;
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          // color: color,
          // onPressed: press,
          // ignore: avoid_returning_null_for_void
          onPressed: (() => null),
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline5,
            //style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
