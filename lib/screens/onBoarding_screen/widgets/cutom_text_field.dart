import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.hintStyle,
    this.mixLins,
    this.autoFoucus = false,
  });
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String hintText;
  final TextStyle? hintStyle;
  final int? mixLins;
  final bool autoFoucus;
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autoFoucus,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
      ),
      maxLines: mixLins,
      controller: controller,
      onChanged: (descriptionValue) {},
    );
  }
}
