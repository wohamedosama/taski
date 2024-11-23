import 'package:flutter/material.dart';
import 'package:taski/constants/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
        automaticallyImplyLeading: false,
        backgroundColor: AppTheme.lightTheme.primaryColor,
      ),
    );
  }
}
