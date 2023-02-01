// ignore_for_file: non_constant_identifier_names

import 'package:app/Tools/ContainerDesign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Tools/MyTheme.dart';

///PageUI0
///
///이 레이아웃은 가로모드일 경우 나타나는 UI이다.
LSUI(context) {
  double height = Get.height - 80 - Get.statusBarHeight;
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
                child: ShowModelGraph(height),
              ),
              SizedBox(
                height: height,
                width: (Get.width - 40) * 0.4,
                child: ListView(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  children: [
                    SizedBox(
                      height: height * 0.6,
                      width: (Get.width - 40) * 0.4,
                      child: AlertWithAnomalyScore(height * 0.6),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: height * 0.6,
                      width: (Get.width - 40) * 0.4,
                      child: ModelSetting(height * 0.6),
                    )
                  ],
                ),
              )
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
  double height = Get.height - 80 - Get.statusBarHeight;
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
                  child: ShowModelGraph(height * 0.6),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: height * 0.3,
                      width: (Get.width - 40) * 0.45,
                      child: AlertWithAnomalyScore(height * 0.3),
                    ),
                    SizedBox(
                      height: height * 0.3,
                      width: (Get.width - 40) * 0.45,
                      child: ModelSetting(height * 0.3),
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

ShowModelGraph(maxHeight) {
  return SizedBox(
    height: maxHeight,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
          child: Text('공정 그래프', style: MyTheme.bigcontentText),
        ),
        const Spacer(),
        ContainerDesign(
            child: SizedBox(
          height: maxHeight - 52,
          child: Center(
            child: Text(
              'ex) 현재 작업공정을\n 모델에 적용한 그래프',
              style: MyTheme.bigcontentText,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
            ),
          ),
        ))
      ],
    ),
  );
}

AlertWithAnomalyScore(maxHeight) {
  return SizedBox(
    height: maxHeight,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
          child: Text('현황', style: MyTheme.bigcontentText),
        ),
        const Spacer(),
        ContainerDesign(
            child: SizedBox(
          height: maxHeight - 52,
          child: Center(
            child: Text(
              'ex) 이상치 스코어로\n 주의/경고 단계로 알림',
              style: MyTheme.bigcontentText,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
            ),
          ),
        ))
      ],
    ),
  );
}

ModelSetting(maxHeight) {
  return SizedBox(
    height: maxHeight,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
          child: Text('설정', style: MyTheme.bigcontentText),
        ),
        const Spacer(),
        ContainerDesign(
            child: SizedBox(
          height: maxHeight - 52,
          child: Center(
            child: Text(
              'ex) 모델 threshold 조작',
              style: MyTheme.bigcontentText,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
            ),
          ),
        ))
      ],
    ),
  );
}
