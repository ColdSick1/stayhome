import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/assets.dart';
import 'package:stayhome/presentation/design/colors.dart';

class ProgressFilling extends StatelessWidget {
  final int percent;
  const ProgressFilling({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.assets_flask_svg),
        Text(
          '$percent%',
          style: const TextStyle(
            color: DesignColors.headerColor,
            fontSize: 36,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Text(
          ' Общий\nрейтинг',
          style: TextStyle(
            color: DesignColors.violetColor,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
