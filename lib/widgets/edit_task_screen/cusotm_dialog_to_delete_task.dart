import 'package:flutter/material.dart';

class CustomDialogToDeleteTask extends StatelessWidget {
  const CustomDialogToDeleteTask({
    super.key,
    required this.onDelete,
    required this.onCancel,
  });

  final void Function() onDelete;
  final void Function() onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Delete Task'),
      content: const Text('Are you sure you want to delete this task?'),
      actions: [
        TextButton(
          onPressed: onCancel,
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: onDelete,
          child: const Text('Delete'),
        ),
      ],
    );
  }
}
