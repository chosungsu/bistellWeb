// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:status_bar_control/status_bar_control.dart';

import '../../Tools/MyTheme.dart';

class drawing extends GetxController {
  Color backgroundcolor = Colors.white;
  Color textcolor = Colors.black;

  void setBGColor(int what) {
    ///setBGColor
    ///
    ///바탕색을 결정

    if (what == 0) {
      backgroundcolor = MyTheme.colorWhite;
    } else {
      backgroundcolor = MyTheme.colorblack;
    }
    StatusBarControl.setColor(backgroundcolor, animated: true);
    update();
    notifyChildrens();
  }

  void setTextColor(int what) {
    ///setTextColor
    ///
    ///글자 크기를 결정

    if (what == 0) {
      textcolor = MyTheme.colorblack;
    } else {
      textcolor = MyTheme.colorWhite;
    }

    update();
    notifyChildrens();
  }
}
