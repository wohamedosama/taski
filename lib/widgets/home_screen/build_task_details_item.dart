import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/widgets/home_screen/custom_timer_picker.dart';

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
