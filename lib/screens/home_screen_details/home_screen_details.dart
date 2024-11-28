import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/strings/text.dart';
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
            const TaskCardItem(
                title: taskCardItemTitle, time: taskCardItemTime),
            const SizedBox(height: 16),
            const BuildTaskDetailsItem(time: 'Today At 16:45'),
            const SizedBox(height: 20),
            SizedBox(
              height: 120,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        overlayColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        side: const BorderSide(color: Colors.transparent),
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.trash,
                              color: MyColors.deleteItem),
                          SizedBox(width: 8),
                          Text('Delete Task',
                              style: TextStyle(color: MyColors.deleteItem)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
