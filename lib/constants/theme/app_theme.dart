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
    scaffoldBackgroundColor: MyColors.lightColor,
    elevatedButtonTheme: ElevatedButtonAppTheme.lightElevatedButtonThemeData,
    appBarTheme: AppBarAppTheme.lightAppBarTheme,
    inputDecorationTheme: TextFormFieldAppTheme.lightInputDecorationTheme,
    textTheme: AppTextTheme.lightColorTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Lato',
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: MyColors.primaryColor,
    scaffoldBackgroundColor: MyColors.darkColor,
    elevatedButtonTheme: ElevatedButtonAppTheme.darktElevatedButtonThemeData,
    appBarTheme: AppBarAppTheme.darkAppBarTheme,
    inputDecorationTheme: TextFormFieldAppTheme.datkInputDecorationTheme,
    textTheme: AppTextTheme.darkColorTextTheme,
  );
}
