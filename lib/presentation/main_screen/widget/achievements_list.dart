import 'package:flutter/material.dart';
import 'package:stayhome/model/achievement_model.dart';
import 'package:stayhome/presentation/main_screen/widget/achievement_list_layout.dart';

class AchievementList extends StatelessWidget {
  const AchievementList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          itemCount: achievementModelData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return AchievementListLayout(
              model: achievementModelData[index],
            );
          }),
    );
  }
}
