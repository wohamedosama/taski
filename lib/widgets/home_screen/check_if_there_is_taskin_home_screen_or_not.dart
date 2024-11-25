import 'package:flutter/material.dart';
import 'package:taski/constants/strings/images.dart';
import 'package:taski/constants/strings/text.dart';

class CheckIfThereIsTaskInHomeScreenOrNot extends StatelessWidget {
  const CheckIfThereIsTaskInHomeScreenOrNot({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(homeScrennCehckList),
          Text(whatDoYouWantToDo,
              style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 16),
          Text(tapToAdd, style: Theme.of(context).textTheme.titleMedium),
        ],
      ),
    );
  }
}
