import 'package:flutter/material.dart';
import 'package:stayhome/presentation/design/colors.dart';

class CirclePainter extends CustomPainter {
  final int percent;
  CirclePainter({required this.percent});
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(
      center,
      100,
      Paint()
        ..style = PaintingStyle.stroke
        ..color = const Color(0xFFF0EDFE)
        ..strokeWidth = 20,
    );

    canvas.saveLayer(
      Rect.fromCenter(center: center, width: 232, height: 232),
      Paint(),
    );

    canvas.drawArc(
      Rect.fromCenter(center: center, width: 170, height: 170),
      0,
      7,
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..color = const Color(0xFFC3C3EB)
        ..strokeWidth = 20,
    );

    canvas.drawArc(
      Rect.fromCenter(center: center, width: 170, height: 170),
      0,
      percent * 0.06,
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..color = DesignColors.violetColor
        ..strokeWidth = 20
        ..blendMode = BlendMode.srcIn,
    );

    canvas.restore();
  }
}
