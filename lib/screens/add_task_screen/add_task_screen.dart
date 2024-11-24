import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/colors/my_colors.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key});
  final TextEditingController addTaskController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Add Task', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            // ! Task Form Field
            TextField(
              onChanged: (addTaskValue) {},
              controller: addTaskController,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Add Your Task Title',
                  hintStyle: Theme.of(context).textTheme.titleLarge),
            ),

            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Description',
                alignLabelWithHint: true,
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(),
              ),
              maxLines: 4,
              controller: descriptionController,
              onChanged: (descriptionValue) {},
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                IconButton(
                    icon: const Icon(FontAwesomeIcons.clock), onPressed: () {}),
                IconButton(
                    icon: const Icon(FontAwesomeIcons.tag), onPressed: () {}),
                IconButton(
                    icon: const Icon(FontAwesomeIcons.flag), onPressed: () {}),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    // Add save functionality here
                  },
                  icon: const Icon(
                    Icons.send,
                    color: MyColors.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
