import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';
import 'package:taski/models/tasks/task_model.dart';
import 'package:taski/widgets/app_bar_title.dart';
import 'package:taski/widgets/calendar_screen/build_list_view_to_displaytask.dart';
import 'package:taski/widgets/calendar_screen/calendar_time_line.dart';
import 'package:taski/widgets/calendar_screen/check_if_is_completed_or_is_todat_task.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

List<TaskModel> filteredTasks = [];

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime? selectedDataeTime;

  @override
  void initState() {
    super.initState();
    selectedDataeTime = DateTime.now();
    BlocProvider.of<GetTasksCubit>(context)
        .displayTaskOnCalendarScreen(selectedDataeTime!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Calendar'),
      ),
      body: BlocBuilder<GetTasksCubit, GetTasksState>(
        builder: (context, state) {
          if (state is DisplayTaskOnCalendarScreen) {
            filteredTasks = state.filteredTasks;
          }

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CalendarTimeLine(
                  onDateSelected: (date) {
                    selectedDataeTime = date;
                    BlocProvider.of<GetTasksCubit>(context)
                        .displayTaskOnCalendarScreen(date);
                  },
                  initialDate: selectedDataeTime,
                ),
                const SizedBox(height: 16),
                // ! is today and is completed Task In calendar screen
                const CheckIfTheTaskISTodayOrIsCompleted(),
                const SizedBox(height: 16),
                //! Show Tasks Depend on TaskStatus

                BuildListViewToDisplayTasks(
                  filteredTasks: filteredTasks,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
