// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:taski/bloc/add_task_cubit/task_cubit.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/models/tasks/task_model.dart';
import 'package:taski/widgets/custom_text_field.dart';
import 'package:taski/widgets/home_screen/custom_date_picker.dart';
import 'package:taski/widgets/home_screen/custom_timer_picker.dart';
import 'package:hive/hive.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController addTaskController = TextEditingController();

  final TextEditingController descriptionController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  final DateTime selectedDate = DateTime.now();

  final TimeOfDay selectedTime = TimeOfDay.now();
  String? title;
  String? descirption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Add Task', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: BlocConsumer<AddTaskCubit, AddTaskState>(
          listener: (BuildContext context, AddTaskState state) {
            if (state is AddTaskSuccessState) {
              Navigator.pop(context);
              BlocProvider.of<GetTasksCubit>(context).fetchAllTask();
            }
          },
          builder: (context, state) {
            return Form(
              key: formKey,
              child: Column(
                children: [
                  // ! Task Form Field
                  CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Task Title';
                      }
                      return null;
                    },
                    controller: addTaskController,
                    hintText: 'Add Your Task Title',
                    onSaved: (addTaskValue) {
                      title = addTaskValue!;
                    },
                    hintStyle: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Task Description';
                      }
                      return null;
                    },
                    controller: descriptionController,
                    hintText: 'Description',
                    mixLins: 4,
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    onSaved: (descirption) {
                      this.descirption = descirption!;
                    },
                  ),
                  const SizedBox(height: 16),

                  // ! Icons timer , tag , flag, send
                  Row(
                    children: [
                      // ! picker date and time
                      IconButton(
                        icon: const Icon(FontAwesomeIcons.calendarDays),
                        onPressed: () {
                          customDataPicker(context);
                        },
                      ),
                      // ! timer picker Icon
                      IconButton(
                          icon: const Icon(FontAwesomeIcons.clock),
                          onPressed: () {
                            customTimePicker(context);
                          }),
                      IconButton(
                          icon: const Icon(FontAwesomeIcons.flag),
                          onPressed: () {}),
                      const Spacer(),
                      // ! send Icon
                      IconButton(
                        icon: const Icon(Icons.send,
                            color: MyColors.primaryColor),
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            var currentDate = DateTime.now();
                            var formattedCurrentDate =
                                DateFormat('yyyy-MM-dd hh:mm')
                                    .format(currentDate);

                            // Fetch the last task ID from Hive and increment it
                            var box = await Hive.openBox<TaskModel>('tasksBox');
                            int lastId = box.isEmpty ? 0 : box.values.last.id!;
                            int newId = lastId + 1;

                            TaskModel tasks = TaskModel(
                              title: title.toString(),
                              description: descirption.toString(),
                              date: formattedCurrentDate,
                              time: formattedCurrentDate,
                              id: newId,
                            );
                            // ignore: use_build_context_synchronously
                            BlocProvider.of<AddTaskCubit>(context)
                                .addTask(tasks);
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
