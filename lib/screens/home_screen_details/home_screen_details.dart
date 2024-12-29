import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';
import 'package:taski/models/tasks/task_model.dart';

import 'package:taski/widgets/edit_task_screen/cusotm_dialog_to_delete_task.dart';
import 'package:taski/widgets/edit_task_screen/delete_button.dart';
import 'package:taski/widgets/home_screen/build_task_details_item.dart';

class HomeScreenDetails extends StatelessWidget {
  const HomeScreenDetails({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    List<TaskModel> tasks = BlocProvider.of<GetTasksCubit>(context).tasks!;

    return Scaffold(
      // ! App bar
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(FontAwesomeIcons.xmark)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ! Edit Task Button
            const SizedBox(height: 16),
            //! Edit Time Button
            BuildTaskDetailsItem(time: tasks[index].time),
            const SizedBox(height: 20),
            // ! Delete Task Button
            DeleteTaskButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CustomDialogToDeleteTask(
                      onCancel: () {
                        Navigator.pop(context);
                      },
                      // ! Delete Task Function
                      // ! I can't delete the task I needed becasue I don't have the task id or index realted to the task from list view
                      //! sorry
                      onDelete: () {
                        BlocProvider.of<GetTasksCubit>(context)
                            .deleteTask(index);
                        Navigator.pop(context);

                        Navigator.pop(context);
                      },
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
