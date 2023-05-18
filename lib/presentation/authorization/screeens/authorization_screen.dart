import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/authorization/widgets/authorization_button.dart';
import 'package:stayhome/presentation/authorization/widgets/authorization_text_field.dart';
import 'package:stayhome/presentation/authorization/widgets/forgot_password.dart';
import 'package:stayhome/presentation/authorization/widgets/authorization_logo.dart';
import 'package:stayhome/presentation/authorization/widgets/second_button.dart';
import 'package:stayhome/presentation/authorization/widgets/spacer_between_fields.dart';

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
              SpacerBetweenFields(height: 40),
              const AuthorizationTextField(
                hintText: 'Телефон',
                iconAsset: '',
              ),
              const SpacerBetweenFields(height: 50),
              const AuthorizationTextField(
                hintText: 'Пароль',
                iconAsset: 'assets/hide_password.svg',
              ),
              const SpacerBetweenFields(height: 12),
              const Forgotpassword(),
              const SpacerBetweenFields(height: 28),
              const AuthorizationButton(
                text: 'Войти',
              ),
              const SpacerBetweenFields(height: 19),
              SecondButton(
                text: 'Регистрация',
                pageNavigate: () {
                  AutoRouter.of(context).pushNamed('/registration');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
