import 'package:flutter/material.dart';

class HomeScreenDetails extends StatelessWidget {
  const HomeScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(child: Text('Home Screen Details')),
        ],
      )),
    );
  }
}
