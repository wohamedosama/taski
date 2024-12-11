import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/strings/routes.dart';
import 'package:taski/models/tasks/task_model.dart';
import 'package:taski/widgets/app_bar_title.dart';
import 'package:taski/widgets/home_screen/check_if_there_is_taskin_home_screen_or_not.dart';
import 'package:taski/widgets/home_screen/custom_list_to_view_tasks.dart';
import 'package:taski/widgets/home_screen/search_bar_in_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<TaskModel> tasks = BlocProvider.of<GetTasksCubit>(context).tasks ?? [];
    return Scaffold(
      floatingActionButton: customFloatingActionButton(
        context,
        'Add Task',
        () {
          Navigator.of(context, rootNavigator: true).pushNamed(addTaskScreen);
        },
      ),
      appBar: AppBar(title: const AppBarTitle(title: 'Home')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // ! Search Bar
            SearchBarInHomeScreen(controller: searchController),
            const SizedBox(height: 16),
            //! check if there is task in home screen or not
            tasks.isEmpty
                ? const CheckIfThereIsTaskInHomeScreenOrNot()
                : BlocBuilder<GetTasksCubit, GetTasksState>(
                    builder: (context, state) {
                      if (state is TaskSuccessState) tasks = state.tasks;
                      return CustomListToViewTasks(tasks: tasks);
                    },
                  ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  FloatingActionButton customFloatingActionButton(
      BuildContext context, String title, void Function()? onPressed) {
    return FloatingActionButton(
      tooltip: title,
      onPressed: onPressed,
      child: const Icon(Icons.add, color: MyColors.lightColor),
    );
  }
}
