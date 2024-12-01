import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/widgets/edit_task_screen/delete_button.dart';
import 'package:taski/widgets/home_screen/build_task_details_item.dart';
import 'package:taski/widgets/home_screen/task_card_item.dart';

class HomeScreenDetails extends StatelessWidget {
  HomeScreenDetails({super.key});
  final List<TaskCardItem> taskCardItems = [
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
  ];

  @override
  Widget build(BuildContext context) {
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
            TaskCardItem(
                title: taskCardItemTitle,
                time: taskCardItemTime,
                isHomeScreen: true,
                onPressed: () {}),
            const SizedBox(height: 16),
            //! Edit Time Button
            const BuildTaskDetailsItem(time: 'Today At 16:45'),
            const SizedBox(height: 20),
            // ! Delete Task Button
            DeleteTaskButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return ShowDialogToDeleteTask(
                      onCancel: () {
                        Navigator.pop(context);
                      },
                      // ! Delete Task Function
                      onDelete: () {},
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

class ShowDialogToDeleteTask extends StatelessWidget {
  const ShowDialogToDeleteTask({
    super.key,
    required this.onDelete,
    required this.onCancel,
  });

  final void Function() onDelete;
  final void Function() onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Delete Task'),
      content: const Text('Are you sure you want to delete this task?'),
      actions: [
        TextButton(
          onPressed: onCancel,
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: onDelete,
          child: const Text('Delete'),
        ),
      ],
    );
  }
}
