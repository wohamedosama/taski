import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/widgets/home_screen/custom_timer_picker.dart';
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
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
            SizedBox(height: 16),
            BuildTaskDetailsItem(time: 'Today At 16:45'),
          ],
        ),
      ),
    );
  }
}

class BuildTaskDetailsItem extends StatelessWidget {
  const BuildTaskDetailsItem({
    super.key,
    required this.time,
  });
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Icon(FontAwesomeIcons.clock, size: 24),
          const SizedBox(width: 12),
          Text('Task Time :', style: Theme.of(context).textTheme.headlineSmall),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              customTimePicker(context);
            },
            child: Text(time),
          ),
        ],
      ),
    );
  }
}
