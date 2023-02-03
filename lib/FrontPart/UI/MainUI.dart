// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:app/Tools/ContainerDesign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Tools/MyTheme.dart';

///PageUI0
///
///이 레이아웃은 가로모드일 경우 나타나는 UI이다.
LSUI(context) {
  double height = Get.height - 130 - Get.statusBarHeight;
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Column(
      children: [
        SizedBox(
          height: height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: height,
                width: (Get.width - 40) * 0.5,
                child: ShowModelGraph(context, height),
              ),
              SizedBox(
                  height: height,
                  width: (Get.width - 40) * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: height * 0.5,
                        width: (Get.width - 40) * 0.4,
                        child: AlertWithAnomalyScore(context, height * 0.5),
                      ),
                      SizedBox(
                        height: height * 0.4,
                        width: (Get.width - 40) * 0.4,
                        child: ModelSetting(context, height * 0.4),
                      )
                    ],
                  ))
            ],
          ),
        )
      ],
    ),
  );
}

///PageUI1
///
///이 레이아웃은 세로모드일 경우 나타나는 UI이다.
PRUI(context) {
  double height = Get.height - 130 - Get.statusBarHeight;
  return SingleChildScrollView(
    physics: const ScrollPhysics(),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(
            height: height,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.6,
                  width: (Get.width - 40),
                  child: ShowModelGraph(context, height * 0.6),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: height * 0.3,
                      width: (Get.width - 40) * 0.45,
                      child: AlertWithAnomalyScore(context, height * 0.3),
                    ),
                    SizedBox(
                      height: height * 0.3,
                      width: (Get.width - 40) * 0.45,
                      child: ModelSetting(context, height * 0.3),
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

ShowModelGraph(context, maxHeight) {
  return SizedBox(
    height: maxHeight,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
          child: Text('Graph', style: MyTheme.bigcontentText),
        ),
        const Spacer(),
        ContainerDesign(
            child: SizedBox(
          height: maxHeight - 52,
          child: Center(
              child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            }, scrollbars: false),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              child: Text(
                '공간구성ex) 현재 작업공정을 실시간 모델에 적용한 그래프를 보여주고 구간 클릭시 shap으로 해당구간 분석을 띄움',
                style: MyTheme.bigcontentText,
                textAlign: TextAlign.center,
              ),
            ),
          )),
        ))
      ],
    ),
  );
}

AlertWithAnomalyScore(context, maxHeight) {
  return SizedBox(
    height: maxHeight,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
          child: Text('Alarm', style: MyTheme.bigcontentText),
        ),
        const Spacer(),
        ContainerDesign(
            child: SizedBox(
          height: maxHeight - 52,
          child: Center(
              child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            }, scrollbars: false),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              child: Text(
                '공간구성ex) 이상치 스코어로 현재 상태를 최저이상대비 퍼센트로 알림',
                style: MyTheme.bigcontentText,
                textAlign: TextAlign.center,
              ),
            ),
          )),
        ))
      ],
    ),
  );
}

ModelSetting(context, maxHeight) {
  return SizedBox(
    height: maxHeight,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
          child: Text('Settings', style: MyTheme.bigcontentText),
        ),
        const Spacer(),
        ContainerDesign(
            child: SizedBox(
          height: maxHeight - 52,
          child: Center(
              child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            }, scrollbars: false),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              child: Text(
                '공간구성ex) 모델 threshold 조작을 비롯 각종 설정값 세팅',
                style: MyTheme.bigcontentText,
                textAlign: TextAlign.center,
              ),
            ),
          )),
        ))
      ],
    ),
  );
}
