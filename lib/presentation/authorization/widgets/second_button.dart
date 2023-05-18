import 'package:flutter/material.dart';

import '../../design/colors.dart';

class SecondButton extends StatelessWidget {
  final String text;
  final Function() pageNavigate;
  const SecondButton(
      {super.key, required this.text, required this.pageNavigate});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pageNavigate,
      child: SizedBox(
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: DesignColors.headerColor,
              ),
        ),
      ),
    );
  }
}
