import 'package:flutter/material.dart';
import 'package:stayhome/presentation/design/colors.dart';

class AuthorizationButton extends StatelessWidget {
  final String text;
  const AuthorizationButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: DesignColors.violetColor,
        ),
        width: double.infinity,
        child: Center(
          child: Padding(
              padding: const EdgeInsets.all(
                16,
              ),
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium,
              )),
        ),
      ),
    );
  }
}
