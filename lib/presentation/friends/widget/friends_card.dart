import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/assets.dart';
import 'package:stayhome/model/friends_model.dart';
import 'package:stayhome/presentation/design/colors.dart';

class FriendsCard extends StatelessWidget {
  final FriendsModel model;
  const FriendsCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.3,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(model.image),
              const SizedBox(
                height: 12,
              ),
              Text(
                model.name,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: DesignColors.headerColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    model.score,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: DesignColors.headerColor,
                        ),
                  ),
                  SvgPicture.asset(
                    Assets.assets_filled_star_svg,
                  ),
                ],
              ),
              // Container(
              //   color: Colors.amber,
              //   height: 1,
              //   width: width * 0.25 * model.ProgressLine,
              //   // width: (double.infinity * model.ProgressLine),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
