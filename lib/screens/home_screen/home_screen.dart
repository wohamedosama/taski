import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: PersistentTabView(
      //   screens: [],
      // ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Index'),
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 4, 124, 210),
      ),
    );
  }
}
