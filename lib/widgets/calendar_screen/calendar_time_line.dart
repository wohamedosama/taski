import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';

class CalendarTimeLine extends StatelessWidget {
  const CalendarTimeLine({
    super.key,
    required this.onDateSelected,
  });
  final void Function(DateTime) onDateSelected;
  @override
  Widget build(BuildContext context) {
    return CalendarTimeline(
      initialDate: DateTime.now(),
      firstDate: DateTime(2000, 1, 1),
      lastDate: DateTime(2300, 12, 30),
      onDateSelected: onDateSelected,
      leftMargin: 15,
      monthColor: MyColors.lightColor,
      dayColor: MyColors.lightColor,
      activeDayColor: MyColors.lightColor,
      activeBackgroundDayColor: MyColors.primaryColor,
      dotColor: MyColors.lightColor,
      dayNameFontSize: 18,
      selectableDayPredicate: (date) => date.day != 23,
      locale: 'en_ISO',
    );
  }
}
