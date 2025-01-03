import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:taski/constants/shared/shared_preferences.dart';
import 'package:taski/constants/strings/routes.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/models/tasks/task_model.dart';

part 'get_tasks_state.dart';

class GetTasksCubit extends Cubit<GetTasksState> {
  GetTasksCubit() : super(GetTasksInitial());
  TaskModel? taskModel;

  List<TaskModel>? tasks;
  List<TaskModel> filteredTasks = [];
  List<TaskModel> searcehdTasks = [];
  bool isDark = false;
  bool isCompleted = false;

  List<TaskModel> fetchAllTask() {
    var taskBox = Hive.box<TaskModel>(kTaskBox);
    tasks = taskBox.values.toList();

    emit(GetTaskSuccessState(tasks: tasks!));

    return tasks!;
  }

  List<TaskModel> displayTaskOnCalendarScreen(DateTime date) {
    var taskBox = Hive.box<TaskModel>(kTaskBox);
    tasks = taskBox.values.toList();

    filteredTasks = tasks!
        .where((task) => DateTime.parse(task.date).day == date.day)
        .toList();
    emit(DisplayTaskOnCalendarScreen(filteredTasks: filteredTasks));

    return filteredTasks;
  }

  Future<void> deleteTask(int index) async {
    var taskBox = Hive.box<TaskModel>(kTaskBox);

    await taskBox.deleteAt(index);
    index = index - 1;

    emit(RemoveTasksSuccessState());

    fetchAllTask();
  }

  Future<void> checkIfTaksComplete(int index) async {
    var taskBox = Hive.box<TaskModel>(kTaskBox);
    TaskModel task = taskBox.getAt(index)!;
    task.isCompleted = !task.isCompleted!;

    isCompleted = task.isCompleted!;

    await taskBox.putAt(index, task);
    emit(CheckIfTaskCompletetOrNotstate());
  }

  void changeAppTheme() {
    isDark = !isDark;
    SharedPref.saveBool(kIsDark, isDark);
    emit(ChangeAppTheme());
  }

  Future<void> loadAppTheme() async {
    isDark = await SharedPref.getBool(kIsDark) ?? false;
    emit(ChangeAppTheme());
  }

  Future<void> deleteAllTasksAndSignOut() async {
    var taskBox = Hive.box<TaskModel>(kTaskBox);
    await taskBox.clear();
    SharedPref.clear();
    emit(DeleteTasksAndLogout());
  }
}
