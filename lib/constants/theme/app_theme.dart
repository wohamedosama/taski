import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/theme/cutome_theme/elevated_button_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Lato',
    useMaterial3: true,
    primaryColor: MyColors.primaryColor,
    scaffoldBackgroundColor: MyColors.scaffoldBackgroundColor,
    elevatedButtonTheme: ElevatedButtonAppTheme.lightElevatedButtonThemeData,
  );
}
