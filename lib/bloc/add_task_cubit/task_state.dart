part of 'task_cubit.dart';

@immutable
sealed class AddTaskState {}

final class AddTaskInitialState extends AddTaskState {}

final class AddTaskLoadingState extends AddTaskState {}

final class AddTaskSuccessState extends AddTaskState {
  // final TaskModel taskModel;
  // AddTaskSuccessState({required this.taskModel});
}

final class AddTaskFailureState extends AddTaskState {
  final String error;
  AddTaskFailureState({required this.error});
}
