// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../BackPart/Get/drawing.dart';

class MyTheme {
  static Color colorWhite = Colors.white;
  static Color colorblack = Colors.black;

  static const TextStyle splashTitle = TextStyle(
    color: Colors.blue,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
  );

  static TextStyle appbarTitle = TextStyle(
    color: drawing().textcolor,
    fontSize: 25,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.5,
  );

  static const TextStyle bigcontentText = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
  );

  static const TextStyle smallcontentText = TextStyle(
      color: Color(0xffAEABC9),
      fontSize: 15,
      letterSpacing: 1.2,
      fontWeight: FontWeight.w500);
}
