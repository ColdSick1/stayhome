import 'package:flutter/material.dart';

class AuthorizationTextField extends StatelessWidget {
  // final String iconAsset;
  final String hintText;
  final Widget? iconAsset;

  const AuthorizationTextField({
    super.key,
    required this.hintText,
    required this.iconAsset,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      suffixIcon: iconAsset,
      hintText: hintText,
      hintStyle: Theme.of(context).textTheme.bodySmall,
    ));
  }
}

//  iconAsset != ''
      //     ? SvgPicture.asset(
      //         iconAsset,
      //         colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
      //         fit: BoxFit.scaleDown,
      //       )
      //     : null,
