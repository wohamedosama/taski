import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/strings/routes.dart';

import 'package:taski/constants/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Task',
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pushNamed(addTaskScreen);
        },
        child: const Icon(Icons.add, color: MyColors.lightColor),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
        automaticallyImplyLeading: false,
        backgroundColor: AppTheme.lightTheme.primaryColor,
      ),
    );
  }
}
