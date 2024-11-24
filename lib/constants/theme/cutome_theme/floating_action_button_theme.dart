import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';

class FloatingactionButtonAppTheme {
  static FloatingActionButtonThemeData lightFloatingActionButtonAppTheme =
      const FloatingActionButtonThemeData(
    backgroundColor: MyColors.primaryColor,
    splashColor: MyColors.lightColor,
    elevation: 0,
    focusColor: MyColors.lightColor,
    disabledElevation: 0,
    iconSize: 32,
  );
  static FloatingActionButtonThemeData darkFloatingActionButtonAppTheme =
      const FloatingActionButtonThemeData(
    backgroundColor: MyColors.primaryColor,
    splashColor: MyColors.navBarColor,
    elevation: 0,
    focusColor: MyColors.lightColor,
    iconSize: 32,
  );
}
