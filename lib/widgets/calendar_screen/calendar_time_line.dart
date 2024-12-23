import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';

class CalendarTimeLine extends StatelessWidget {
  const CalendarTimeLine({
    super.key,
    required this.onDateSelected,
    this.initialDate,
  });
  final void Function(DateTime) onDateSelected;
  final DateTime? initialDate;
  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return CalendarTimeline(
      initialDate: initialDate ?? DateTime.now(),
      firstDate: DateTime(2000, 1, 1),
      lastDate: DateTime(2300, 12, 30),
      onDateSelected: onDateSelected,
      leftMargin: 15,
      monthColor: isDark ? MyColors.lightColor : MyColors.navBarColor,
      dayColor: isDark ? MyColors.lightColor : MyColors.navBarColor,
      activeDayColor: isDark ? MyColors.lightColor : MyColors.navBarColor,
      activeBackgroundDayColor: MyColors.primaryColor,
      dotColor: isDark ? MyColors.lightColor : MyColors.navBarColor,
      dayNameFontSize: 18,
      //selectableDayPredicate: (date) => date.day != 32,
      locale: 'en_ISO',
    );
  }
}
