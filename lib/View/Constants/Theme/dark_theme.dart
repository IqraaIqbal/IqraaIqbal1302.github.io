import 'package:flutter/material.dart';
import 'package:portfolio/View/Constants/Theme/my_colors.dart';


ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: MyColors.backgroundDark,
    primary: MyColors.blueLight,
    secondary: MyColors.blueDark,
    tertiary: MyColors.greyCol,
  ),
);