import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:stayhome/presentation/design/colors.dart';

import '../../../model/user_rating/user_rating_model.dart';

class UserRatingLayout extends StatelessWidget {
  final int index;
  final Color color;
  final UserRatingModel model;
  const UserRatingLayout(
      {super.key,
      required this.color,
      required this.model,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18,
          top: 18,
          bottom: 18,
        ),
        child: Row(
          children: [
            Text(
              '${index + 1}.',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: DesignColors.normalTxt,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              model.username,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: DesignColors.headerColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  model.score,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: DesignColors.normalTxt,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            )
          ],
        ),
      ),
    );
  }
}
