import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/theme/cutome_theme/appbar_theme.dart';
import 'package:taski/constants/theme/cutome_theme/elevated_button_theme.dart';
import 'package:taski/constants/theme/cutome_theme/text_field_theme.dart';
import 'package:taski/constants/theme/cutome_theme/text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Lato',
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: MyColors.primaryColor,
    scaffoldBackgroundColor: MyColors.scaffoldBackgroundColor,
    elevatedButtonTheme: ElevatedButtonAppTheme.lightElevatedButtonThemeData,
    appBarTheme: AppBarAppTheme.lightAppBarTheme,
    inputDecorationTheme: TextFormFieldAppTheme.lightInputDecorationTheme,
    textTheme: AppTextTheme.lightColorTextTheme,
  );
}
