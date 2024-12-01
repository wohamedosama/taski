import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/widgets/edit_task_screen/cusotm_dialog_to_delete_task.dart';
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
                    return CustomDialogToDeleteTask(
                      onCancel: () {
                        Navigator.pop(context);
                      },
                      // ! Delete Task Function
                      onDelete: () {
                        // ! after handle logic popup from the scren
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
