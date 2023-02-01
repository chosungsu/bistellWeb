// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:get/get.dart';

class uisetting extends GetxController {
  int pagenumber = 0;

  void setPagenumber(int what) {
    ///setPagenumber
    ///
    ///페이지 라우트 결정

    pagenumber = what;
    update();
    notifyChildrens();
  }
}
