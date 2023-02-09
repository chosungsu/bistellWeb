// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class MyTheme {
  static Color colorwhite = Colors.grey.shade300;
  static Color colorblack = Colors.black45;
  static Color chartcolor = Colors.white;
  static Color redcolortext = Colors.redAccent;
  static Color colortext = Colors.blueAccent;
  static Color insidetext = Colors.black;
  static Color summarytext = Colors.white;
  static Color iconcolor = Colors.white;

  static TextStyle splashTitle = TextStyle(
    color: colortext,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
  );

  static TextStyle appbarTitle = TextStyle(
    color: colortext,
    fontSize: 23,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
  );

  static TextStyle bigcontentText = TextStyle(
    color: colortext,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
  );

  static TextStyle smallcontentText = TextStyle(
      color: colorblack,
      fontSize: 15,
      letterSpacing: 1.2,
      fontWeight: FontWeight.bold);

  static TextStyle insidecontainerText = TextStyle(
      color: insidetext,
      fontSize: 15,
      letterSpacing: 1.2,
      fontWeight: FontWeight.bold);

  static TextStyle insidesummaryText = TextStyle(
      color: summarytext,
      fontSize: 15,
      letterSpacing: 1.2,
      fontWeight: FontWeight.bold);
}
