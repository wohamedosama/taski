import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';

Future<DateTime?> customDataPicker(BuildContext context) async {
  return await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
    builder: (context, child) {
      return Theme(
        data: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.dark(
            primary: MyColors.primaryColor,
            onPrimary: MyColors.lightColor,
            surface: MyColors.navBarColor,
            onSurface: MyColors.lightColor,
          ),
          dialogBackgroundColor: MyColors.navBarColor,
        ),
        child: child!,
      );
    },
  );
}
