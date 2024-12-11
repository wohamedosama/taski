import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/strings/routes.dart';
import 'package:taski/models/tasks/task_model.dart';
import 'package:taski/widgets/app_bar_title.dart';
import 'package:taski/widgets/home_screen/check_if_there_is_taskin_home_screen_or_not.dart';
import 'package:taski/widgets/home_screen/search_bar_in_home_screen.dart';
import 'package:taski/widgets/home_screen/task_card_item.dart';

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
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Task',
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pushNamed(addTaskScreen);
        },
        child: const Icon(Icons.add, color: MyColors.lightColor),
      ),
      appBar: AppBar(
        title: const AppBarTitle(title: 'Home'),
      ),
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
                        if (state is TaskSuccessState) {
                          tasks = state.tasks;
                        }
                        return Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemCount: tasks.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .pushNamed(homeScreenDetails);
                                },
                                // !try to use flutter_slidable
                                child: Dismissible(
                                  background: Container(
                                    alignment: AlignmentDirectional.centerEnd,
                                    color: Colors.red,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                0.0, 0.0, 0.02, 0.0),
                                            child: const Icon(Icons.delete)),
                                      ],
                                    ),
                                  ),
                                  onDismissed: (direction) {
                                    tasks[index].delete();
                                    BlocProvider.of<GetTasksCubit>(context)
                                        .fetchAllTask();
                                  },
                                  key: UniqueKey(),
                                  child: TaskCardItem(task: tasks[index]),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
              const SizedBox(height: 8),
            ],
          )),
    );
  }
}
