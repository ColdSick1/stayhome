import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stayhome/presentation/authorization/widgets/authorization_button.dart';
import 'package:stayhome/presentation/authorization/widgets/authorization_text_field.dart';
import 'package:stayhome/presentation/authorization/widgets/registration_logo.dart';
import 'package:stayhome/presentation/authorization/widgets/second_button.dart';
import 'package:stayhome/presentation/authorization/widgets/spacer_between_fields.dart';

@RoutePage()
class RegistationScreen extends StatelessWidget {
  const RegistationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const RegistrationLogo(),
            const AuthorizationTextField(
              hintText: 'Имя',
              iconAsset: '',
            ),
            const SpacerBetweenFields(height: 44),
            const AuthorizationTextField(
              hintText: 'Пол',
              iconAsset: 'assets/show_more.svg',
            ),
            const SpacerBetweenFields(height: 44),
            const AuthorizationTextField(
              hintText: 'телефон',
              iconAsset: '',
            ),
            const SpacerBetweenFields(height: 44),
            const AuthorizationTextField(
              hintText: 'Пароль',
              iconAsset: '',
            ),
            const SpacerBetweenFields(height: 44),
            const AuthorizationTextField(
                hintText: 'Повторите пароль', iconAsset: ''),
            const SpacerBetweenFields(height: 44),
            const AuthorizationButton(
              text: 'Зарегистрироваться',
            ),
            const SpacerBetweenFields(height: 23),
            SecondButton(
                text: 'Войти',
                pageNavigate: () {
                  AutoRouter.of(context).pushNamed('/');
                }),
          ],
        ),
      ),
    );
  }
}
