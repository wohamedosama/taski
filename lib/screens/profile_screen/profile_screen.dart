import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/widgets/app_bar_title.dart';
import 'package:taski/widgets/build_setting_item.dart';

// ! refactor that page to be less code and more readable
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Settings Section
            Text(
              'App Settings',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            ...buildSettingItemsForAppSettingSections(),

            // Taski Section
            const SizedBox(height: 16),
            Text(
              'Taski',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            ...buildSettingItemsForTaskiSections(),
          ],
        ),
      ),
    );
  }
}

class BuildListViewToViewTheAppSettingBar extends StatelessWidget {
  const BuildListViewToViewTheAppSettingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Column(children: buildSettingItemsForAppSettingSections());
        },
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemCount: buildSettingItemsForAppSettingSections().length);
  }
}

List<BuildSettingItem> buildSettingItemsForAppSettingSections() => [
      const BuildSettingItem(
          title: changeAppTheme, leadingIcon: FontAwesomeIcons.penToSquare),
      const BuildSettingItem(
          title: changeapplanguage, leadingIcon: FontAwesomeIcons.language),
    ];

class BuildListViewToViewTheTaskiBar extends StatelessWidget {
  const BuildListViewToViewTheTaskiBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Column(children: buildSettingItemsForTaskiSections());
        },
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemCount: buildSettingItemsForTaskiSections().length);
  }
}

List<BuildSettingItem> buildSettingItemsForTaskiSections() {
  return [
    const BuildSettingItem(
        title: aboutUS, leadingIcon: FontAwesomeIcons.circleQuestion),
    const BuildSettingItem(
        title: faq, leadingIcon: FontAwesomeIcons.circleInfo),
    const BuildSettingItem(
        title: helpAndFeedback, leadingIcon: FontAwesomeIcons.bolt),
    const BuildSettingItem(
        title: supportUS, leadingIcon: FontAwesomeIcons.thumbsUp),
    const BuildSettingItem(
      isLogout: true,
      title: logout,
      leadingIcon: FontAwesomeIcons.arrowRightFromBracket,
      leadingColor: MyColors.deleteItem,
    ),
  ];
}
