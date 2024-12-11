import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/models/tasks/task_model.dart';

part 'task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitialState());

  void addTask(TaskModel task) async {
    emit(AddTaskLoadingState());
    try {
      var taskBox = Hive.box<TaskModel>(kTaskBox);
      await taskBox.add(task);
      emit(AddTaskSuccessState());
    } catch (e) {
      emit(AddTaskFailureState(error: e.toString()));
    }
  }
}
