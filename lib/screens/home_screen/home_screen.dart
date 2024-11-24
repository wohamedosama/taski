import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/strings/routes.dart';
import 'package:taski/widgets/cutom_text_field.dart';
import 'package:taski/widgets/search_bar_in_home_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController searchController = TextEditingController();
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
        title: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Text('Home', style: Theme.of(context).textTheme.headlineMedium),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // ! Search Bar
            SearchBarInHomeScreen(controller: searchController),
          ],
        ),
      ),
    );
  }
}
