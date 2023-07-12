import 'package:flutter/material.dart';
import 'package:stayhome/model/achievement_model.dart';
import 'package:stayhome/presentation/design/colors.dart';

class AchievementListLayout extends StatelessWidget {
  final AchievementModel model;
  const AchievementListLayout({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(model.image),
          Text(
            model.name,
            style: const TextStyle(
              fontSize: 14,
              color: DesignColors.headerColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          Flexible(
            child: Text(
              model.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: DesignColors.normalTxt,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
