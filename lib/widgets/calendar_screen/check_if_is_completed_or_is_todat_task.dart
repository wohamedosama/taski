import 'package:flutter/material.dart';

import 'package:taski/constants/colors/my_colors.dart';

class CheckIfTheTaskISTodayOrIsCompleted extends StatelessWidget {
  const CheckIfTheTaskISTodayOrIsCompleted({
    super.key,
    this.isCompleted = true,
  });
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  isCompleted ? MyColors.primaryColor : MyColors.navBarColor,
              side: BorderSide(
                  color:
                      isCompleted ? MyColors.primaryColor : MyColors.darkGray),
            ),
            onPressed: () {},
            child: const Text('Completed'),
          ),
        ),
      ],
    );
  }
}
