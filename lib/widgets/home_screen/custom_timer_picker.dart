import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';

Future<TimeOfDay?> customTimePicker(BuildContext context) async {
  return await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
    builder: (context, child) {
      return Theme(
        data: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.dark(
            secondary: MyColors.primaryColor,
            onSecondary: MyColors.lightColor,
            primary: MyColors.primaryColor,
            onPrimary: MyColors.lightColor,
            surface: MyColors.navBarColor,
            onSurface: MyColors.lightColor,
          ),
          dialogBackgroundColor: Colors.black, // Main background color
        ),
        child: child!,
      );
    },
  );
}
