import 'package:flutter/material.dart';
import 'package:stayhome/presentation/design/colors.dart';

class AuthorizationButton extends StatelessWidget {
  final double padding;
  final String text;
  final Function() pageRoute;
  const AuthorizationButton(
      {super.key,
      required this.text,
      required this.pageRoute,
      required this.padding});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pageRoute,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: DesignColors.violetColor,
        ),
        width: double.infinity,
        child: Center(
          child: Padding(
              padding: EdgeInsets.all(
                padding,
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
