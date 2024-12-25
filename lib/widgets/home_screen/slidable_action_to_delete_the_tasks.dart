import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';
import 'package:taski/models/tasks/task_model.dart';
import 'package:taski/widgets/home_screen/delete_tasks_widget.dart';
import 'package:taski/widgets/home_screen/task_card_item.dart';

class CustomSlidableToDeleteTasks extends StatelessWidget {
  const CustomSlidableToDeleteTasks({
    super.key,
    required this.tasks,
    required this.index,
  });

  final List<TaskModel> tasks;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: UniqueKey(),
      endActionPane: ActionPane(
        dismissible: DismissiblePane(
          onDismissed: () {
            BlocProvider.of<GetTasksCubit>(context).deleteTask(index);
          },
        ),
        motion: const BehindMotion(),
        children: [
          slidableActionToDeleteTheTasks(tasks, (context) {
            BlocProvider.of<GetTasksCubit>(context).deleteTask(index);
          }, index)
        ],
      ),
      child: TaskCardItem(
        task: tasks[index],
      ),
    );
  }
}
