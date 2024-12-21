import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';
import 'package:taski/models/tasks/task_model.dart';
import 'package:taski/widgets/app_bar_title.dart';

import 'package:taski/widgets/home_screen/search_bar_in_home_screen.dart';
import 'package:taski/widgets/home_screen/task_card_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();
  List<TaskModel>? searcehdTasks;

  /// ***********  ✨ Codeium Command ⭐  ************
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  /// ****  170e54e8-70d0-4759-835c-2671bd304c2d  ******
  @override
  Widget build(BuildContext context) {
    List<TaskModel>? tasks = BlocProvider.of<GetTasksCubit>(context).tasks;
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // ! Search Bar
            // Todo build serch fucntion
            SearchBarInHomeScreen(
              controller: searchController,
              onChanged: (searchedTasks) {
                setState(() {
                  searcehdTasks = tasks!
                      .where((task) =>
                          task.title.toLowerCase().contains(searchedTasks))
                      .toList();
                });
              },
            ),
            const SizedBox(height: 16),
            searchController.text.isEmpty
                ? const Text('No Task Found')
                : Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 6);
                      },
                      itemBuilder: (context, index) {
                        return TaskCardItem(
                          task: searcehdTasks![index],
                        );
                      },
                      itemCount: searcehdTasks!.length,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
