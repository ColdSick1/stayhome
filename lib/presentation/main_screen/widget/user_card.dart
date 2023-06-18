import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/assets.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/presentation/main_screen/widget/user_health_bar.dart';
import 'custom_circle_avatar.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
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
          child: const Column(
            children: [
              CustomCircleAvatar(),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ),
        const Positioned(
          top: 200,
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: UserHealthBar(percent: 0.76),
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: Image.asset(
            Assets.assets_dots_registration_png,
          ),
        ),
        Positioned(
          top: height * 0.22,
          left: width * 0.05,
          child: Row(
            children: [
              const Text(
                '15 000',
                style: TextStyle(
                  fontSize: 14,
                  color: DesignColors.headerColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              SvgPicture.asset(Assets.assets_filled_star_svg)
            ],
          ),
        ),
      ],
    );
  }
}
