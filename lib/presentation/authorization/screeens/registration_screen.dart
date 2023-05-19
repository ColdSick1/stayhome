import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/main.dart';
import 'package:stayhome/presentation/authorization/widgets/authorization_button.dart';
import 'package:stayhome/presentation/authorization/widgets/authorization_text_field.dart';
import 'package:stayhome/presentation/authorization/widgets/registration_logo.dart';
import 'package:stayhome/presentation/authorization/widgets/second_button.dart';
import 'package:stayhome/presentation/authorization/widgets/spacer_between_fields.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/router/router.dart';

@RoutePage()
class RegistationScreen extends StatelessWidget {
  const RegistationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const RegistrationLogo(),
              const AuthorizationTextField(
                hintText: 'Имя',
                iconAsset: null,
              ),
              const SpacerBetweenFields(height: 44),
              AuthorizationTextField(
                hintText: 'Пол',
                iconAsset: SvgPicture.asset(
                  'assets/show_more.svg',
                  colorFilter:
                      const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                  fit: BoxFit.scaleDown,
                ),
              ),
              const SpacerBetweenFields(height: 44),
              const AuthorizationTextField(
                hintText: 'телефон',
                iconAsset: null,
              ),
              const SpacerBetweenFields(height: 44),
              AuthorizationTextField(
                hintText: 'Пароль',
                iconAsset: SvgPicture.asset(
                  'assets/hide_password.svg',
                  colorFilter:
                      const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                  fit: BoxFit.scaleDown,
                ),
              ),
              const SpacerBetweenFields(height: 44),
              AuthorizationTextField(
                hintText: 'Повторите пароль',
                iconAsset: SvgPicture.asset(
                  'assets/show_password.svg',
                  colorFilter: const ColorFilter.mode(
                      DesignColors.grey, BlendMode.srcIn),
                  fit: BoxFit.scaleDown,
                ),
              ),
              const SpacerBetweenFields(height: 44),
              const AuthorizationButton(
                text: 'Зарегистрироваться',
              ),
              const SpacerBetweenFields(height: 23),
              SecondButton(
                  text: 'Войти',
                  pageNavigate: () {
                    getIt<AppRouterSingleton>().push(AuthorizationRoute());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
