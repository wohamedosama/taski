import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Lato',
    useMaterial3: true,
    primaryColor: MyColors.primaryColor,
    scaffoldBackgroundColor: MyColors.scaffoldBackgroundColor,
  );
}
