import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/widgets/nav_bar/nav_bar_item.dart';

// ignore: must_be_immutable
class NavBar extends StatelessWidget {
  NavBar({super.key});
  NavBarItem navBarItem = NavBarItem();
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 1);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: navBarItem.screess(),
      items: navBarItem.navBarItems(),

      resizeToAvoidBottomInset: true,
      hideNavigationBarWhenKeyboardAppears: true,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: MyColors.navBarColor,

      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 300),
          curve: Curves.decelerate,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle:
          NavBarStyle.style10, // Choose the nav bar style with this property
    );
  }
}
