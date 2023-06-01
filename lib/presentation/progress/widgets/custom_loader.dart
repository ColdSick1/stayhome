import 'package:flutter/material.dart';
import 'package:stayhome/presentation/progress/widgets/circle_painter.dart';

class CustomLoaderProgress extends StatelessWidget {
  final height;
  final int percent;
  const CustomLoaderProgress(
      {super.key, required this.height, required this.percent});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: height / 3,
      child: CustomPaint(
        painter: CirclePainter(percent: percent),
        child: Container(),
      ),
    );
  }
}
