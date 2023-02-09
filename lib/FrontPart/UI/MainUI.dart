// ignore_for_file: non_constant_identifier_names

import 'dart:ui';
import 'package:app/BackPart/Get/uisetting.dart';
import 'package:app/Tools/ContainerDesign.dart';
import 'package:app/Tools/Variables.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../../BackPart/Get/drawing.dart';
import '../../Tools/MyTheme.dart';

final draw = Get.put(drawing());
final uiset = Get.put(uisetting());

///PageUI0
///
///이 레이아웃은 가로모드일 경우 나타나는 UI이다.
LSUI(context) {
  double height = GetPlatform.isMobile
      ? Get.height - 70 - Get.statusBarHeight
      : Get.height - 110 - Get.statusBarHeight;
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
                width: (Get.width - 60) * 0.6,
                child: ShowModelGraph(context, height, (Get.width - 60) * 0.6),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                  height: height,
                  width: (Get.width - 60) * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: (height - 40) * 0.3,
                        width: (Get.width - 60) * 0.4,
                        child: ModelBtn(context, (height - 20) * 0.3,
                            (Get.width - 60) * 0.4),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: (height - 40) * 0.3,
                        width: (Get.width - 60) * 0.4,
                        child: SummaryModel(context, (height - 20) * 0.3,
                            (Get.width - 60) * 0.4),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: (height - 40) * 0.4,
                        width: (Get.width - 60) * 0.4,
                        child: ModelSetting(context, (height - 20) * 0.4,
                            (Get.width - 60) * 0.4),
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
  double height = GetPlatform.isMobile
      ? Get.height - 70 - Get.statusBarHeight
      : Get.height - 110 - Get.statusBarHeight;
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
                  child:
                      ShowModelGraph(context, height * 0.6, (Get.width - 40)),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: height * 0.3,
                      width: (Get.width - 40) * 0.45,
                      child: SummaryModel(
                          context, height * 0.3, (Get.width - 40) * 0.45),
                    ),
                    SizedBox(
                      height: height * 0.3,
                      width: (Get.width - 40) * 0.45,
                      child: ModelSetting(
                          context, height * 0.3, (Get.width - 40) * 0.45),
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

ShowModelGraph(context, maxHeight, maxWidth) {
  return ContainerDesign(
    color: MyTheme.chartcolor,
    child: Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
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
                  '',
                  style: MyTheme.bigcontentText,
                  textAlign: TextAlign.center,
                ),
              ),
            )),
          ),
        )
      ],
    ),
  );
}

ModelBtn(context, maxHeight, maxWidth) {
  return ContainerDesign(
    color: MyTheme.chartcolor,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '작동',
          style: MyTheme.bigcontentText,
          textAlign: TextAlign.center,
        ),
        GetBuilder<uisetting>(builder: (_) {
          return Flexible(
              fit: FlexFit.tight,
              child: SizedBox(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (uiset.startorstop) {
                        uiset.setmodelprocess(false);
                      } else {
                        uiset.setmodelprocess(true);
                      }
                    },
                    child: ContainerDesign(
                        color: uiset.startorstop == true
                            ? MyTheme.colortext
                            : MyTheme.redcolortext,
                        child: SizedBox(
                          width: maxWidth * 0.4,
                          child: Text(
                            uiset.startorstop == true ? 'Start' : 'Stop',
                            style: MyTheme.insidesummaryText,
                            textAlign: TextAlign.center,
                          ),
                        )),
                  )
                ],
              )));
        })
      ],
    ),
  );
}

SummaryModel(context, maxHeight, maxWidth) {
  //maxWidth가 350이하일 때 이 뷰를 쪼개서 화살표로 뷰 넘기는 액션 선택
  listsummary = [
    '1',
    '12',
  ];
  return ContainerDesign(
      color: MyTheme.chartcolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '요약',
            style: MyTheme.bigcontentText,
            textAlign: TextAlign.center,
          ),
          GetBuilder<uisetting>(builder: (_) {
            return Flexible(
                fit: FlexFit.tight,
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      maxWidth < 350 && uiset.summarylistnumber == 1
                          ? GestureDetector(
                              onTap: () {
                                uiset.setSummarylistnumber(0);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: MyTheme.colortext,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.chevron_left,
                                  size: 20,
                                  color: MyTheme.iconcolor,
                                ),
                              ),
                            )
                          : Container(
                              width: 20,
                            ),
                      maxWidth < 350
                          ? (uiset.summarylistnumber == 0
                              ? Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Text(
                                        'Key',
                                        style: MyTheme.insidecontainerText,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    ContainerDesign(
                                        color: MyTheme.colortext,
                                        child: SizedBox(
                                          width: maxWidth * 0.4,
                                          child: Text(
                                            listsummary[0],
                                            style: MyTheme.insidesummaryText,
                                            textAlign: TextAlign.center,
                                          ),
                                        ))
                                  ],
                                )
                              : Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Text(
                                        'Threshold',
                                        style: MyTheme.insidecontainerText,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    ContainerDesign(
                                        color: MyTheme.colortext,
                                        child: SizedBox(
                                          width: maxWidth * 0.4,
                                          child: Text(
                                            listsummary[1],
                                            style: MyTheme.insidesummaryText,
                                            textAlign: TextAlign.center,
                                          ),
                                        ))
                                  ],
                                ))
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Text(
                                        'Key',
                                        style: MyTheme.insidecontainerText,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    ContainerDesign(
                                        color: MyTheme.colortext,
                                        child: SizedBox(
                                          width: maxWidth * 0.3,
                                          child: Text(
                                            listsummary[0],
                                            style: MyTheme.insidesummaryText,
                                            textAlign: TextAlign.center,
                                          ),
                                        ))
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Text(
                                        'Threshold',
                                        style: MyTheme.insidecontainerText,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    ContainerDesign(
                                        color: MyTheme.colortext,
                                        child: SizedBox(
                                          width: maxWidth * 0.3,
                                          child: Text(
                                            listsummary[1],
                                            style: MyTheme.insidesummaryText,
                                            textAlign: TextAlign.center,
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            ),
                      maxWidth < 350 && uiset.summarylistnumber == 0
                          ? GestureDetector(
                              onTap: () {
                                uiset.setSummarylistnumber(1);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: MyTheme.colortext,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 20,
                                  color: MyTheme.iconcolor,
                                ),
                              ),
                            )
                          : Container(
                              width: 20,
                            ),
                    ],
                  ),
                ));
          })
        ],
      ));
}

ModelSetting(context, maxHeight, maxWidth) {
  return ContainerDesign(
      color: MyTheme.chartcolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '설정',
            style: MyTheme.bigcontentText,
            textAlign: TextAlign.center,
          ),
          GetBuilder<uisetting>(builder: (_) {
            return Flexible(
                fit: FlexFit.tight,
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Text(
                              'Key',
                              style: MyTheme.insidecontainerText,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          ContainerDesign(
                              color: MyTheme.colortext,
                              child: SizedBox(
                                width: maxWidth * 0.3,
                                child: Text(
                                  '1',
                                  style: MyTheme.insidesummaryText,
                                  textAlign: TextAlign.center,
                                ),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Text(
                              'Threshold',
                              style: MyTheme.insidecontainerText,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          ContainerDesign(
                              color: MyTheme.colortext,
                              child: SizedBox(
                                width: maxWidth * 0.3,
                                child: Text(
                                  '5',
                                  style: MyTheme.insidesummaryText,
                                  textAlign: TextAlign.center,
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ));
          })
        ],
      ));
}
