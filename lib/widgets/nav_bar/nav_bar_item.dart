import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/screens/calendar_screen/calendar_screen.dart';
import 'package:taski/screens/home_screen/home_screen.dart';
import 'package:taski/screens/profile_screen/profile_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBarItem {
  List<PersistentBottomNavBarItem> navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.calendar, color: Colors.white),
        activeColorSecondary: MyColors.whiteColor,
        inactiveColorSecondary: MyColors.whiteColor,
        title: 'Calendar',
        activeColorPrimary: const Color(0xff8687E7),
        inactiveColorPrimary: const Color(0xffFFFFFF),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          FontAwesomeIcons.houseChimney,
          color: Colors.white,
          size: 22,
        ),
        title: 'Home',
        activeColorSecondary: MyColors.whiteColor,
        inactiveColorSecondary: MyColors.whiteColor,
        activeColorPrimary: const Color(0xff8687E7),
        inactiveColorPrimary: const Color(0xffFFFFFF),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.gear, color: Colors.white),
        title: 'profile',
        activeColorSecondary: MyColors.whiteColor,
        inactiveColorSecondary: MyColors.whiteColor,
        activeColorPrimary: const Color(0xff8687E7),
        inactiveColorPrimary: const Color(0xffFFFFFF),
      ),
    ];
  }

  List<Widget> screess() {
    return [
      const CalendarScreen(),
      HomeScreen(),
      const ProfileScreen(),
    ];
  }
}
