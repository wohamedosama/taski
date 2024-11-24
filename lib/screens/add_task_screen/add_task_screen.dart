// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/screens/onBoarding_screen/widgets/cutom_text_field.dart';

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
            CustomTextField(
              controller: addTaskController,
              hintText: 'Add Your Task Title',
              onChanged: (addTaskValue) {},
              autoFoucus: true,
              hintStyle: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: descriptionController,
              hintText: 'Description',
              mixLins: 4,
              hintStyle: Theme.of(context).textTheme.bodyMedium,
              onChanged: (descriptionValue) {},
            ),
            const SizedBox(height: 16),

            // ! Icons timer , tag , flag, send
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
                  icon: const Icon(Icons.send, color: MyColors.primaryColor),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
