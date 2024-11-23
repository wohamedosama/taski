import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';

class ElevatedButtonAppTheme {
  static ElevatedButtonThemeData lightElevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: MyColors.lightColor,
      backgroundColor: MyColors.primaryColor,
      disabledBackgroundColor: MyColors.diasbledColor,
      disabledForegroundColor: MyColors.darkColor,
      side: const BorderSide(color: MyColors.primaryColor),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      textStyle: const TextStyle(
        color: MyColors.whiteColor,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
  static ElevatedButtonThemeData darktElevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: MyColors.lightColor,
      backgroundColor: MyColors.primaryColor,
      disabledBackgroundColor: MyColors.darkColor,
      disabledForegroundColor: MyColors.darkColor,
      side: const BorderSide(color: MyColors.primaryColor),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      textStyle: const TextStyle(
        color: MyColors.whiteColor,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
