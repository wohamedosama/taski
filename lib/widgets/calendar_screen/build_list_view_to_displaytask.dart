import 'package:flutter/material.dart';
import 'package:taski/models/tasks/task_model.dart';
import 'package:taski/widgets/home_screen/task_card_item.dart';

class BuildListViewToDisplayTasks extends StatelessWidget {
  const BuildListViewToDisplayTasks({
    super.key,
    required this.filteredTasks,
    this.isCompleted = false,
  });
  final List<TaskModel> filteredTasks;

  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 6);
        },
        itemBuilder: (context, index) {
          return TaskCardItem(
            isCompleted: filteredTasks[index].isCompleted!,
            task: filteredTasks[index],
          );
        },
        itemCount: filteredTasks.length,
      ),
    );
  }
}
