import 'package:flutter/material.dart';

class SpacerBetweenFields extends StatelessWidget {
  final double height;
  const SpacerBetweenFields({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
