import 'package:flutter/material.dart';
import 'package:stayhome/presentation/progress/widgets/circle_painter.dart';
import 'package:stayhome/presentation/progress/widgets/progress_filling.dart';

class CustomLoaderProgress extends StatelessWidget {
  final double height;
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
        child: ClipRRect(
          child: Transform.rotate(
              angle: 1.5,
              child: Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  ProgressFilling(percent: percent),
                ],
              )),
        ),
      ),
    );
  }
}
