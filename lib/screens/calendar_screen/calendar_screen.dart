import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calendar'),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff8687E7),
      ),
    );
  }
}
