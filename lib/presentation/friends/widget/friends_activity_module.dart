import 'package:flutter/material.dart';
import 'package:stayhome/model/friends_activity/friends_activity_model_data.dart';

import 'package:stayhome/presentation/friends/widget/activity_message.dart';

class FriendsActivityModule extends StatelessWidget {
  const FriendsActivityModule({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ActivityMessage(
          color: index % 2 == 0 ? Colors.white : const Color(0xFFF6F6FF),
          model: friendsActivityModelData[index],
        );
      },
      itemCount: friendsActivityModelData.length,
    );
  }
}
