import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/widgets/app_bar_title.dart';
import 'package:taski/widgets/calendar_screen/calendar_time_line.dart';
import 'package:taski/widgets/calendar_screen/check_if_is_completed_or_is_todat_task.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

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
              onDateSelected: (date) {
                // ignore: avoid_print
                print(date.day);
              },
            ),
            const SizedBox(height: 16),
            // ! is today and is completed Task In calendar screen
            const CheckIfTheTaskISTodayOrIsCompleted(),
          ],
        ),
      ),
    );
  }
}
