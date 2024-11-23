import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';

class AppBarAppTheme {
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: MyColors.darkColor, size: 24),
    actionsIconTheme: IconThemeData(color: MyColors.darkColor, size: 24),
    titleTextStyle: TextStyle(
      color: MyColors.darkColor,
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
  );
  static AppBarTheme darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: MyColors.whiteColor, size: 24),
    actionsIconTheme: IconThemeData(color: MyColors.whiteColor, size: 24),
    titleTextStyle: TextStyle(
      color: MyColors.whiteColor,
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
  );
}
