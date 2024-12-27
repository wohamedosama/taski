import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/models/tasks/task_model.dart';
import 'package:taski/widgets/home_screen/build_button_to_check_the_task_completed_or_now.dart';
import 'package:taski/widgets/home_screen/edit_task_button.dart';

class TaskCardItem extends StatelessWidget {
  const TaskCardItem(
      {super.key,
      this.isHomeScreen = false,
      this.onPressed,
      required this.task,
      this.onTap,
      this.isCompleted = false});

  final bool isHomeScreen;
  final void Function()? onPressed;
  final TaskModel task;
  final void Function()? onTap;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: MyColors.navBarColor,
      ),
      child: Row(
        children: [
          BuildButtonToCheckIfTheTaskCompletedOrNot(
              isCompleted: isCompleted, onTap: onTap),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: MyColors.lightColor),
                ),
                const SizedBox(height: 4),
                Text(
                  task.time,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: MyColors.hintTextstyle),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          isHomeScreen ? editTaskButton(onPressed: onPressed) : Container(),
        ],
      ),
    );
  }
}
