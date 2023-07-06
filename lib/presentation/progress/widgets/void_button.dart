import 'package:flutter/material.dart';
import 'package:stayhome/main.dart';
import 'package:stayhome/presentation/design/colors.dart';
import 'package:stayhome/router/router.dart';

class VoidButton extends StatelessWidget {
  final String text;

  const VoidButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<AppRouterSingleton>().push(const AuthorizationRoute());
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              width: 1,
              color: DesignColors.violetColor,
            )),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 16,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: DesignColors.violetColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
