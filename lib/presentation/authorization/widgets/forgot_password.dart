import 'package:flutter/material.dart';

import '../../design/colors.dart';
import 'package:stayhome/i18n/strings.g.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          t.forgetPassword,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: DesignColors.normalTxt,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
        ),
      ],
    );
  }
}
