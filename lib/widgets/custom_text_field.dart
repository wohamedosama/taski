import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.onSaved,
    this.hintStyle,
    this.mixLins = 1,
    this.prefixIcon,
    this.validator,
    this.onChanged,
    this.onTap,
    this.autofocus = false,
  });
  final TextEditingController controller;
  final void Function(String?)? onSaved;
  final String hintText;
  final TextStyle? hintStyle;
  final int mixLins;

  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Function()? onTap;
  final bool autofocus;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      onTap: onTap,
      onChanged: onChanged,
      validator: validator,
      onSaved: onSaved,
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
