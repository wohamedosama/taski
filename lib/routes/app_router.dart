import 'package:flutter/material.dart';
import 'package:taski/constants/strings/routes.dart';
import 'package:taski/screens/add_task_screen/add_task_screen.dart';
import 'package:taski/screens/home_screen_details/home_screen_details.dart';
import 'package:taski/screens/onBoarding_screen/onboarding_screen.dart';
import 'package:taski/widgets/nav_bar/nav_bar.dart';

class AppRouters {
  // ignore: body_might_complete_normally_nullable
  Route? generateRoute(RouteSettings settings) {
    // ignore: avoid_print
    print('Navigating to: ${settings.name}');
    switch (settings.name) {
      case onboardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case navbar:
        return MaterialPageRoute(builder: (context) => NavBar());
      case addTaskScreen:
        return MaterialPageRoute(builder: (context) => AddTaskScreen());
      case homeScreenDetails:
        return MaterialPageRoute(
            builder: (context) => const HomeScreenDetails());
    }
  }
}
