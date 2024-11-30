import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/colors/my_colors.dart';

class TaskCardItem extends StatelessWidget {
  const TaskCardItem({
    super.key,
    required this.title,
    required this.time,
    this.isHomeScreen = false,
    this.onPressed,
  });
  final String title;
  final String time;
  final bool isHomeScreen;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: MyColors.navBarColor,
      ),
      child: Row(
        children: [
          const Icon(Icons.circle_outlined,
              color: MyColors.lightColor, size: 24),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: MyColors.lightColor),
                ),
                const SizedBox(height: 4),
                Text(
                  time,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: MyColors.hintTextstyle),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          isHomeScreen ? editTaskButton(onPressed: onPressed) : Container(),
        ],
      ),
    );
  }
}

Widget editTaskButton({
  void Function()? onPressed,
}) =>
    IconButton(
      onPressed: onPressed,
      icon: const Icon(
        FontAwesomeIcons.penToSquare,
      ),
    );
