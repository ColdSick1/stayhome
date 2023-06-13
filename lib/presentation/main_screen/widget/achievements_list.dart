import 'package:flutter/material.dart';
import 'package:stayhome/model/achievement_model.dart';
import 'package:stayhome/presentation/main_screen/widget/achievement_list_layout.dart';

import '../../design/colors.dart';

class AchievementList extends StatelessWidget {
  const AchievementList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
          ),
          child: Text(
            'Достижения',
            style: TextStyle(
              color: DesignColors.headerColor,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: achievementModelData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return AchievementListLayout(
                  model: achievementModelData[index],
                );
              }),
        ),
      ],
    );
  }
}
