import 'package:flutter/material.dart';
import 'package:stayhome/assets.dart';
import 'package:stayhome/presentation/authorization/widgets/authorization_button.dart';
import 'package:stayhome/presentation/authorization/widgets/second_button.dart';
import 'package:stayhome/presentation/authorization/widgets/spacer_between_fields.dart';
import 'package:stayhome/presentation/design/colors.dart';

import '../../../main.dart';
import '../../../router/router.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(54, 87, 54, 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Курьер ждет у дверей',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: DesignColors.headerColor, fontSize: 16),
                  ),
                  const SpacerBetweenFields(height: 13),
                  Text(
                    'Вас ожидает ежедневная\nбесплатная посылка',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SpacerBetweenFields(height: 28),
                  AuthorizationButton(
                    padding: 8.0,
                    text: 'Получить',
                    pageRoute: () {},
                  ),
                  const SpacerBetweenFields(height: 23),
                  SecondButton(
                    text: 'Отменить',
                    pageNavigate: () {
                      getIt<AppRouterSingleton>().pop();
                    },
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -100,
            child: Image.asset(Assets.assets_delivery_star_png),
          ),
        ],
      ),
    );
  }
}
