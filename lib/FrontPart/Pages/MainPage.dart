// ignore_for_file: prefer_typing_uninitialized_variables, unused_local_variable,, prefer_const_literals_to_create_immutables, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import '../../BackPart/Get/drawing.dart';
import '../../BackPart/Get/uisetting.dart';
import '../../Tools/AppbarCustom.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ///변수 선언구간
  final draw = Get.put(drawing());
  final uiset = Get.put(uisetting());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<drawing>(
        builder: (_) => Scaffold(
            backgroundColor: draw.backgroundcolor,
            body: SafeArea(child: MainBody(context))));
  }

  Widget MainBody(BuildContext context) {
    return SizedBox(
      child: GetBuilder<drawing>(
        builder: (controller) {
          return Container(
              color: draw.backgroundcolor,
              child: Column(
                children: [
                  const AppBarCustom(
                    title: 'LOBBY',
                    lefticon: false,
                    righticon: false,
                    lefticonname: Ionicons.add_outline,
                    righticonname: Ionicons.add_outline,
                  ),
                  /*const SizedBox(
                    height: 20,
                  ),
                  Flexible(
                      fit: FlexFit.tight,
                      child: ScrollConfiguration(
                          behavior: NoBehavior(),
                          child: LayoutBuilder(
                            builder: ((context, constraint) {
                              
                            }),
                          ))),*/
                ],
              ));
        },
      ),
    );
  }
}