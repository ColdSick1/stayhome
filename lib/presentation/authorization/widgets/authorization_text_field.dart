import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stayhome/presentation/design/colors.dart';

class AuthorizationTextField extends StatelessWidget {
  final String iconAsset;
  final String hintText;

  const AuthorizationTextField({
    super.key,
    required this.hintText,
    required this.iconAsset,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      suffixIcon: iconAsset != ''
          ? SvgPicture.asset(
              iconAsset,
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
              fit: BoxFit.scaleDown,
            )
          : null,
      hintText: hintText,
      hintStyle: Theme.of(context).textTheme.bodySmall,
    ));
  }
}
