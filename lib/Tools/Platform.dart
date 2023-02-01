// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

ReturnByPlatform(actionandroid, actionios, actionweb) {
  if (GetPlatform.isWeb) {
    return actionweb;
  } else {
    if (GetPlatform.isAndroid) {
      return actionandroid;
    } else {
      return actionios;
    }
  }
}

Responsivelayout(landscape, portrait) {
  if (Device.orientation == Orientation.landscape) {
    return landscape;
  } else {
    return portrait;
  }
}
