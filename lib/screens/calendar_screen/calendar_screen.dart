import 'package:flutter/material.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/widgets/app_bar_title.dart';
import 'package:taski/widgets/calendar_screen/calendar_time_line.dart';
import 'package:taski/widgets/calendar_screen/check_if_is_completed_or_is_todat_task.dart';
import 'package:taski/widgets/home_screen/task_card_item.dart';

class CalendarScreen extends StatelessWidget {
  CalendarScreen({super.key});
  final List<TaskCardItem> taskCardItems = [
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Calendar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CalendarTimeLine(
              onDateSelected: (date) {},
            ),
            const SizedBox(height: 16),
            // ! is today and is completed Task In calendar screen
            const CheckIfTheTaskISTodayOrIsCompleted(),
            const SizedBox(height: 16),
            //! Show Tasks Depend on TaskStatus
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 6);
                  },
                  itemBuilder: (context, index) {
                    return TaskCardItem(
                        title: taskCardItems[index].title,
                        time: taskCardItems[index].time);
                  },
                  itemCount: taskCardItems.length),
            ),
          ],
        ),
      ),
    );
  }
}
