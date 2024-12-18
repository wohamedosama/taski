import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.onSaved,
    this.hintStyle,
    this.mixLins = 1,
    this.autoFoucus = false,
    this.prefixIcon,
    this.validator,
    this.onChanged,
  });
  final TextEditingController controller;
  final void Function(String?)? onSaved;
  final String hintText;
  final TextStyle? hintStyle;
  final int mixLins;
  final bool autoFoucus;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      onSaved: onSaved,
      autofocus: autoFoucus,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: hintStyle,
      ),
      maxLines: mixLins,
      controller: controller,
    );
  }
}
