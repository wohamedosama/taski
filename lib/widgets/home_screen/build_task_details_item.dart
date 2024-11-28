import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/widgets/home_screen/custom_timer_picker.dart';

class BuildTaskDetailsItem extends StatelessWidget {
  const BuildTaskDetailsItem({
    super.key,
    required this.time,
  });
  final String time;
  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: EdgeInsets.zero,
      //(horizontal: 8.0)
      child: Row(
        children: [
          const Icon(FontAwesomeIcons.clock, size: 24),
          const SizedBox(width: 12),
          Text('Task Time :', style: Theme.of(context).textTheme.headlineSmall),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: MyColors.lightColor,
              backgroundColor:
                  isDark ? MyColors.primaryColor : MyColors.navBarColor,
              disabledBackgroundColor: MyColors.diasbledColor,
              disabledForegroundColor: MyColors.darkColor,
              side: BorderSide(
                  color: isDark ? MyColors.primaryColor : MyColors.navBarColor),
            ),
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
