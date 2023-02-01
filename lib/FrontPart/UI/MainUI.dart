// ignore_for_file: non_constant_identifier_names

import 'package:app/BackPart/Get/drawing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../Tools/Platform.dart';

UI(context, maxWidth, maxHeight) {
  return GetBuilder<drawing>(
    builder: (_) {
      return SizedBox(
        height: maxHeight,
        width: maxWidth,
        child: Responsivelayout(PageUI0(context, maxHeight, maxWidth),
            PageUI1(context, maxHeight, maxWidth)),
      );
    },
  );
}

///PageUI0
///
///이 레이아웃은 가로모드일 경우 나타나는 UI이다.
PageUI0(context, maxHeight, maxWidth) {
  return SingleChildScrollView(
    physics: const ScrollPhysics(),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(
            height: (maxHeight - 20) * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: (maxWidth - 40) * 0.5,
                  color: Colors.yellow,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: maxHeight * 0.3,
                      width: (maxWidth - 40) * 0.4,
                      color: Colors.blue,
                    ),
                    Container(
                      height: maxHeight * 0.2,
                      width: (maxWidth - 40) * 0.4,
                      color: Colors.green,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

///PageUI1
///
///이 레이아웃은 세로모드일 경우 나타나는 UI이다.
PageUI1(context, maxHeight, maxWidth) {
  return SingleChildScrollView(
    physics: const ScrollPhysics(),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(
            height: (maxHeight - 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: (maxHeight - 20) * 0.6,
                  width: (maxWidth - 40),
                  color: Colors.yellow,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: (maxHeight - 20) * 0.3,
                      width: (maxWidth - 40) * 0.45,
                      color: Colors.blue,
                    ),
                    Container(
                      height: (maxHeight - 20) * 0.3,
                      width: (maxWidth - 40) * 0.45,
                      color: Colors.green,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
