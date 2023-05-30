import 'package:flutter/material.dart';
import 'package:stayhome/model/friends_model_data.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/presentation/friends/widget/friends_card.dart';

class FriendsModule extends StatelessWidget {
  const FriendsModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: [
              Text(
                'Ваши друзья',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: DesignColors.headerColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                '12',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: DesignColors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                textAlign: TextAlign.end,
              ),
              Expanded(
                child: Text(
                  'все >',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: DesignColors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                  textAlign: TextAlign.end,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              ...friendsModelData.map(
                (e) => FriendsCard(model: e),
              ),
              const SizedBox(
                width: 12,
              ),
            ],
          ),
        )
      ],
    );
  }
}
