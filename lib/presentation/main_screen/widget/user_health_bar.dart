import 'package:flutter/material.dart';

import '../../../assets.dart';

class UserHealthBar extends StatelessWidget {
  final double percent;
  const UserHealthBar({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.antiAlias,
      fit: StackFit.passthrough,
      children: [
        Container(
          width: 360,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            children: [
              Image.asset(
                Assets.assets_health_png,
              ),
              Text(
                '${percent * 100} %',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Container(
          height: 25,
          width: width * percent,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            gradient: const LinearGradient(
              colors: [
                Color(0xFFEF5904),
                Color(0xFFF3DB00),
                Color(0xFF03CE24),
              ],
            ),
          ),
          child: Text(
            '1',
            style: TextStyle(color: Colors.white.withOpacity(0)),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
