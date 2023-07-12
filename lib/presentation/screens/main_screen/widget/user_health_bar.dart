import 'package:flutter/material.dart';

import '../../../../assets.dart';

class UserHealthBar extends StatelessWidget {
  final double percent;
  const UserHealthBar({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: 25,
          width: width * 0.91,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
          ),
          // child: Row(
          //   children: [
          //     Image.asset(
          //       Assets.assets_health_png,
          //     ),
          //     Text(
          //       '${percent * 100} %',
          //       textAlign: TextAlign.center,
          //     ),
          //   ],
          // ),
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
          // child: Text(
          //   '1',
          //   style: TextStyle(color: Colors.white.withOpacity(0)),
          //   textAlign: TextAlign.center,
          // ),
        ),
        Positioned(
          top: 3,
          left: width * 0.43,
          child: Text(
            '${(percent * 100).round()} %',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Positioned(
          top: 1,
          child: Image.asset(
            Assets.assets_health_png,
          ),
        ),
      ],
    );
  }
}
