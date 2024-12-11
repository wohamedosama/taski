part of 'get_tasks_cubit.dart';

@immutable
sealed class GetTasksState {}

final class GetTasksInitial extends GetTasksState {}

final class TaskLoadingState extends GetTasksState {}

final class TaskSuccessState extends GetTasksState {
  final List<TaskModel> tasks;
  TaskSuccessState({required this.tasks});
}

final class TaskFailureState extends GetTasksState {
  final String error;
  TaskFailureState({required this.error});
}
