import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';

class BuildButtonToCheckIfTheTaskCompletedOrNot extends StatelessWidget {
  const BuildButtonToCheckIfTheTaskCompletedOrNot({
    super.key,
    this.isCompleted = false,
    this.onTap,
  });

  final bool isCompleted;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
          isCompleted
              ? Icons.radio_button_checked
              : Icons.radio_button_unchecked,
          color: MyColors.lightColor,
          size: 24),
    );
  }
}
