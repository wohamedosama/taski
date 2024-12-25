import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/models/tasks/task_model.dart';

SlidableAction slidableActionToDeleteTheTasks(
  List<TaskModel> tasks,
  void Function(BuildContext)? onPressed,
  int index,
) {
  return SlidableAction(
    borderRadius: BorderRadius.circular(4),
    autoClose: true,
    onPressed: onPressed,
    backgroundColor: MyColors.deleteItem,
    foregroundColor: MyColors.lightColor,
    icon: FontAwesomeIcons.trash,
    label: 'Delete',
  );
}
