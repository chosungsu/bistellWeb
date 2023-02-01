import 'package:app/BackPart/Get/drawing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerDesign extends StatelessWidget {
  const ContainerDesign({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final draw = Get.put(drawing());

    return GetBuilder<drawing>(
        builder: (_) => Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: draw.textcolor, width: 1)),
              child: child,
            ));
  }
}
