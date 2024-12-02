import 'package:flutter/material.dart';

class CheckIfTheTaskISTodayOrIsCompleted extends StatelessWidget {
  const CheckIfTheTaskISTodayOrIsCompleted({
    super.key,
  });

  // bool isCompleted = false;
  // bool isToday =false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            // style: ElevatedButton.styleFrom(
            //   backgroundColor: isToday
            //       ? MyColors.primaryColor
            //       : MyColors.navBarColor,
            //   side: BorderSide(
            //       color: isToday
            //           ? MyColors.primaryColor
            //           : MyColors.darkGray),
            // ),
            onPressed: () {
              // setState(() {
              //   isToday = !isToday;
              // });
            },
            child: const Text('Today'),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            // style: ElevatedButton.styleFrom(
            //   backgroundColor: isCompleted
            //       ? MyColors.primaryColor
            //       : MyColors.navBarColor,
            //   side: BorderSide(
            //       color: isCompleted
            //           ? MyColors.primaryColor
            //           : MyColors.darkGray),
            // ),
            onPressed: () {
              // setState(() {
              //   isCompleted = !isCompleted;
              // });
            },
            child: const Text('Completed'),
          ),
        ),
      ],
    );
  }
}
