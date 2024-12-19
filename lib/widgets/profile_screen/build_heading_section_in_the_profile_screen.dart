import 'package:flutter/material.dart';

class BuildHeadingSectionInProfileScreen extends StatelessWidget {
  const BuildHeadingSectionInProfileScreen({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
