import 'package:flutter/material.dart';
import 'package:stayhome/mock/user_rating_model_data.dart';
import 'package:stayhome/presentation/screens/friends/widget/user_rating_layout.dart';

class TopUsers extends StatelessWidget {
  const TopUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return UserRatingLayout(
          index: index,
          color: index % 2 == 0 ? Colors.white : const Color(0xFFF6F6FF),
          model: userRatingModelData[index],
        );
      },
      itemCount: userRatingModelData.length,
    );
  }
}
