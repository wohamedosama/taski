import 'package:flutter/material.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/strings/routes.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/widgets/home_screen/check_if_there_is_taskin_home_screen_or_not.dart';
import 'package:taski/widgets/home_screen/search_bar_in_home_screen.dart';
import 'package:taski/widgets/home_screen/task_card_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController searchController = TextEditingController();
  final List<TaskCardItem> taskCardItems = [
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
    const TaskCardItem(title: taskCardItemTitle, time: taskCardItemTime),
  ];
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
            const SizedBox(height: 16),
            //! check if there is task in home screen or not
            taskCardItems.isEmpty
                ? const CheckIfThereIsTaskInHomeScreenOrNot()
                : InkWell(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true)
                          .pushNamed(homeScreenDetails);
                    },
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: 580,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: taskCardItems.length,
                          itemBuilder: (context, index) {
                            return TaskCardItem(
                              title: taskCardItems[index].title,
                              time: taskCardItems[index].time,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
