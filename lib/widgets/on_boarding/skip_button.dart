import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required this.onPressed,
    this.text = 'Skip',
    //this.color = Colors.black,
    this.fontSize = 20,
  });

  final void Function()? onPressed;
  final String text;
  //final Color color;
  final int fontSize;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              //   color: color,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.3),
        ),
      ),
    );
  }
}
