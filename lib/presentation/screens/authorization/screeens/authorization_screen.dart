import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/main.dart';
import 'package:stayhome/presentation/screens/authorization/widgets/authorization_button.dart';
import 'package:stayhome/presentation/screens/authorization/widgets/authorization_text_field.dart';
import 'package:stayhome/presentation/screens/authorization/widgets/forgot_password.dart';
import 'package:stayhome/presentation/screens/authorization/widgets/authorization_logo.dart';
import 'package:stayhome/presentation/screens/authorization/widgets/second_button.dart';
import 'package:stayhome/presentation/screens/authorization/widgets/vertical_spacer.dart';
import 'package:stayhome/router/router.dart';
import 'package:stayhome/i18n/strings.g.dart';

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
              const VerticalSpacer(height: 40),
              AuthorizationTextField(
                hintText: t.phone,
                iconAsset: null,
              ),
              const VerticalSpacer(height: 50),
              AuthorizationTextField(
                hintText: t.password,
                iconAsset: SvgPicture.asset(
                  'assets/hide_password.svg',
                  colorFilter:
                      const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                  fit: BoxFit.scaleDown,
                ),
              ),
              const VerticalSpacer(height: 12),
              const Forgotpassword(),
              const VerticalSpacer(height: 28),
              AuthorizationButton(
                padding: 16.0,
                text: t.authorization,
                tapHandler: () {
                  getIt<AppRouterSingleton>().push(const DashboardRoute());
                  // getIt<AppRouterSingleton>().push(const NotFound());
                },
              ),
              const VerticalSpacer(height: 19),
              SecondButton(
                text: t.registration,
                pageNavigate: () {
                  // getIt<AppRouterSingleton>().pushNamed('/dashboard/progress');
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
