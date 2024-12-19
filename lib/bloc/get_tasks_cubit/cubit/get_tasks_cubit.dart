import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/models/tasks/task_model.dart';

part 'get_tasks_state.dart';

class GetTasksCubit extends Cubit<GetTasksState> {
  GetTasksCubit() : super(GetTasksInitial());

  List<TaskModel>? tasks;
  List<TaskModel> filteredTasks = [];

  List<TaskModel> fetchAllTask() {
    var taskBox = Hive.box<TaskModel>(kTaskBox);
    tasks = taskBox.values.toList();
    emit(TaskSuccessState(tasks: tasks!));

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

  bool isDark = false;

  void changeAppTheme() {
    isDark = !isDark;
    emit(ChangeAppTheme());
  }
}
