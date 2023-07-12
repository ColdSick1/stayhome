import 'package:flutter/material.dart';
import 'package:stayhome/presentation/design/colors.dart';

class InfoWidget extends StatelessWidget {
  final String text;
  final String value;
  const InfoWidget({super.key, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: DesignColors.headerColor,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                color: DesignColors.headerColor,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
