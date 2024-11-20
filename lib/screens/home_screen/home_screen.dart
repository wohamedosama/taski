import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff8687E7),
      ),
    );
  }
}
