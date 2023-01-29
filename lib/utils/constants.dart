// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF1E1C66);
const kPrimaryLightColor = Color(0xFFF2F2F2);
const kTittileColor = Color(0xFF333333);
const SecondaryYellow = Color(0xFFffC845);
const SecondaryPink = Color(0xFFFF234F);
const SecondaryBlue = Color(0xFF1F80BD);
const SecondaryGreen = Color(0xFF8CC53B);

const double defaultPadding = 16.0;


class ColorConstant {

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}