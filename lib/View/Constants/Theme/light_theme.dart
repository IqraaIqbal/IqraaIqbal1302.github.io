import 'package:flutter/material.dart';
import 'package:portfolio/View/Constants/Theme/my_colors.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: MyColors.backgroundLight,
    primary: MyColors.blueLight,
    secondary: MyColors.blueDark,
    tertiary: MyColors.greyCol,
  ),
);