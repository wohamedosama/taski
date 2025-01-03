part of 'get_tasks_cubit.dart';

@immutable
sealed class GetTasksState {}

final class GetTasksInitial extends GetTasksState {}

final class TaskLoadingState extends GetTasksState {}

final class GetTaskSuccessState extends GetTasksState {
  final List<TaskModel> tasks;
  GetTaskSuccessState({required this.tasks});
}

final class TaskFailureState extends GetTasksState {
  final String error;
  TaskFailureState({required this.error});
}

final class DisplayTaskOnCalendarScreen extends GetTasksState {
  final List<TaskModel> filteredTasks;
  DisplayTaskOnCalendarScreen({required this.filteredTasks});
}

final class DisplayTaskOnSearchFormField extends GetTasksState {
  final List<TaskModel> searcehdTasks;
  DisplayTaskOnSearchFormField({required this.searcehdTasks});
}

final class ChangeAppTheme extends GetTasksState {}

final class RemoveTasksSuccessState extends GetTasksState {}

final class DeleteTasksAndLogout extends GetTasksState {}

final class CheckIfTaskCompletetOrNotstate extends GetTasksState {}
