import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/widgets/cutom_text_field.dart';

class SearchBarInHomeScreen extends StatelessWidget {
  const SearchBarInHomeScreen({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      prefixIcon: const Icon(
        FontAwesomeIcons.magnifyingGlass,
        size: 20,
      ),
      controller: controller,
      hintText: 'Search for your task...',
      hintStyle: Theme.of(context).textTheme.titleLarge,
    );
  }
}
