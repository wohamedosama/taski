import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';

class TextFormFieldAppTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    // constraints: const BoxConstraints.expand(height: MySize.inputFieldHeight),
    hintStyle:
        const TextStyle().copyWith(fontSize: 16, color: MyColors.hintTextstyle),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide:
          const BorderSide(width: 1, color: MyColors.borderSideTextFailed),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide:
          const BorderSide(width: 1, color: MyColors.borderSideTextFailed),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide:
          const BorderSide(width: 1, color: MyColors.borderSideTextFailed),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: MyColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 2, color: MyColors.warning),
    ),
  );

  static InputDecorationTheme datkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    // constraints: const BoxConstraints.expand(height: MySize.inputFieldHeight),
    hintStyle:
        const TextStyle().copyWith(fontSize: 16, color: MyColors.whiteColor),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: MyColors.whiteColor),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: MyColors.whiteColor),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: MyColors.whiteColor),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: MyColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 2, color: MyColors.warning),
    ),
  );
}
