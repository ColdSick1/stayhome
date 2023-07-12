import 'package:flutter/material.dart';
import 'package:stayhome/assets.dart';
import 'package:stayhome/presentation/design/colors.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 232,
          width: 232,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              colors: [
                Colors.white,
                const Color(0xFFCBE2FF).withOpacity(0.4),
              ],
            ),
            borderRadius: BorderRadius.circular(200),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFCBE2FF).withOpacity(0.4),
                spreadRadius: -2.0,
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Image.asset(Assets.assets_sloth_png),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Александр Комбаров',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: DesignColors.headerColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Лютый бездельник',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: DesignColors.violetColor,
                ),
              ),
            ],
          ),
        ),
        // const UserHealthBar(
        //   percent: 0.76,
        // ),
      ],
    );
  }
}
