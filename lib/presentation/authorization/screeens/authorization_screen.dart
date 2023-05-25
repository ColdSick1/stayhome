import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/main.dart';
import 'package:stayhome/presentation/authorization/widgets/authorization_button.dart';
import 'package:stayhome/presentation/authorization/widgets/authorization_text_field.dart';
import 'package:stayhome/presentation/authorization/widgets/forgot_password.dart';
import 'package:stayhome/presentation/authorization/widgets/authorization_logo.dart';
import 'package:stayhome/presentation/authorization/widgets/second_button.dart';
import 'package:stayhome/presentation/authorization/widgets/spacer_between_fields.dart';
import 'package:stayhome/router/router.dart';

@RoutePage()
class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AuthorizationLogo(),
              const SpacerBetweenFields(height: 40),
              const AuthorizationTextField(
                hintText: 'Телефон',
                iconAsset: null,
              ),
              const SpacerBetweenFields(height: 50),
              AuthorizationTextField(
                hintText: 'Пароль',
                iconAsset: SvgPicture.asset(
                  'assets/hide_password.svg',
                  colorFilter:
                      const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                  fit: BoxFit.scaleDown,
                ),
              ),
              const SpacerBetweenFields(height: 12),
              const Forgotpassword(),
              const SpacerBetweenFields(height: 28),
              AuthorizationButton(
                padding: 16.0,
                text: 'Войти',
                pageRoute: () {
                  getIt<AppRouterSingleton>().push(const ItemsRoute());
                },
              ),
              const SpacerBetweenFields(height: 19),
              SecondButton(
                text: 'Регистрация',
                pageNavigate: () {
                  getIt<AppRouterSingleton>().push(const RegistationRoute());
                  // AutoRouter.of(context).pushNamed('/registration');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
