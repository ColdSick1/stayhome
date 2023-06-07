import 'package:flutter/material.dart';
import 'package:stayhome/presentation/main_screen/widget/user_health_bar.dart';

import 'custom_circle_avatar.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: const Color(0xFFF7F7FF),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff825fb9).withOpacity(0.24),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          child: const CustomCircleAvatar(),
        ),
        const Positioned(
          top: 200,
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: UserHealthBar(percent: 0.76),
          ),
        ),
      ],
    );
  }
}
