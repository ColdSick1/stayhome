import 'package:flutter/material.dart';
import 'package:stayhome/presentation/design/colors.dart';

class YourFriendsActivity extends StatelessWidget {
  const YourFriendsActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Активность ваших друзей',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: DesignColors.headerColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
    );
  }
}
