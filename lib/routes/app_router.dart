import 'package:flutter/material.dart';
import 'package:taski/constants/strings/routes.dart';
import 'package:taski/screens/home_screen/home_screen.dart';
import 'package:taski/screens/onBoarding_screen/onboarding_screen.dart';

class AppRouters {
  // ignore: body_might_complete_normally_nullable
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
  }
}
