import 'package:flutter/material.dart';
import 'package:stayhome/presentation/design/colors.dart';

final customThemeData = ThemeData(
  scaffoldBackgroundColor: DesignColors.backgroundColor,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      color: DesignColors.normalTxt,
      fontWeight: FontWeight.w400,
    ),
  ),
);
