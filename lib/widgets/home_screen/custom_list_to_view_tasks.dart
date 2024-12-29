import 'package:flutter/material.dart';
import 'package:taski/constants/strings/routes.dart';
import 'package:taski/models/tasks/task_model.dart';
import 'package:taski/widgets/home_screen/slidable_action_to_delete_the_tasks.dart';

class CustomListToViewTasks extends StatelessWidget {
  const CustomListToViewTasks({
    super.key,
    required this.tasks,
  });

  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context, rootNavigator: true)
                  .pushNamed(homeScreenDetails, arguments: index);
            },
            //  ! try to use flutter_slidable
            child: CustomSlidableToDeleteTasks(
              tasks: tasks,
              index: index,
            ),
          );
        },
      ),
    );
  }
}
