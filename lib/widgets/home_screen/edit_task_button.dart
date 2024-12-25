import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget editTaskButton({
  void Function()? onPressed,
}) =>
    IconButton(
      onPressed: onPressed,
      icon: const Icon(
        FontAwesomeIcons.penToSquare,
      ),
    );
