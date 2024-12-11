import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';

import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/models/tasks/task_model.dart';
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
            tasks[index].delete();
            BlocProvider.of<GetTasksCubit>(context).fetchAllTask();
          },
        ),
        motion: const BehindMotion(),
        children: [
          slidableActionToDeleteTheTasks(tasks, (context) {
            tasks[index].delete();
            BlocProvider.of<GetTasksCubit>(context).fetchAllTask();
          }, index)
        ],
      ),
      child: TaskCardItem(
        task: tasks[index],
      ),
    );
  }
}

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
