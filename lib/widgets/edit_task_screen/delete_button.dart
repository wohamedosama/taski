import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/colors/my_colors.dart';

class DeleteTaskButton extends StatelessWidget {
  const DeleteTaskButton({
    super.key,
    required this.onPressed,
  });
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                overlayColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                side: const BorderSide(color: Colors.transparent),
                padding: EdgeInsets.zero,
              ),
              onPressed: onPressed,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.trash, color: MyColors.deleteItem),
                  SizedBox(width: 8),
                  Text('Delete Task',
                      style: TextStyle(color: MyColors.deleteItem)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
