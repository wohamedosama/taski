import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/strings/routes.dart';

FloatingActionButton customFloatingActionButton(BuildContext context) {
  return FloatingActionButton(
    tooltip: 'Add Task',
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pushNamed(addTaskScreen);
    },
    child: const Icon(Icons.add, color: MyColors.lightColor),
  );
}
