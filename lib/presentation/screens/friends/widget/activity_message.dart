import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/assets.dart';
import 'package:stayhome/model/friends_activity/friends_activity_model.dart';
import 'package:stayhome/presentation/design/colors.dart';

class ActivityMessage extends StatelessWidget {
  final Color color;
  final FriendsActivity model;
  const ActivityMessage({super.key, required this.color, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.only(left: 18, top: 18, bottom: 18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: model.messageState == MessageState.allert
              ? [
                  SvgPicture.asset(
                    Assets.assets_attention_svg,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    model.message,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: DesignColors.allertRed,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                  )
                ]
              : [
                  Text(
                    model.message,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: DesignColors.headerColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
        ),
      ),
    );
  }
}
