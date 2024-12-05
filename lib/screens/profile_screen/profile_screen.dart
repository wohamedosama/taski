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
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('App Settings',
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              const SizedBox(height: 4),
              BuildSettingItem(
                  leadingColor:
                      isDark ? MyColors.lightColor : MyColors.navBarColor,
                  title: changeAppTheme,
                  leadingIcon: FontAwesomeIcons.penToSquare),
              const SizedBox(height: 8),
              BuildSettingItem(
                  leadingColor:
                      isDark ? MyColors.lightColor : MyColors.navBarColor,
                  title: changeapplanguage,
                  leadingIcon: FontAwesomeIcons.language),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Taski',
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              const SizedBox(height: 4),
              BuildSettingItem(
                  leadingColor:
                      isDark ? MyColors.lightColor : MyColors.navBarColor,
                  title: aboutUS,
                  leadingIcon: FontAwesomeIcons.circleQuestion),
              const SizedBox(height: 8),
              BuildSettingItem(
                  leadingColor:
                      isDark ? MyColors.lightColor : MyColors.navBarColor,
                  title: faq,
                  leadingIcon: FontAwesomeIcons.circleInfo),
              const SizedBox(height: 8),
              BuildSettingItem(
                  leadingColor:
                      isDark ? MyColors.lightColor : MyColors.navBarColor,
                  title: helpAndFeedback,
                  leadingIcon: FontAwesomeIcons.bolt),
              const SizedBox(height: 8),
              BuildSettingItem(
                  leadingColor:
                      isDark ? MyColors.lightColor : MyColors.navBarColor,
                  title: supportUS,
                  leadingIcon: FontAwesomeIcons.thumbsUp),
              const SizedBox(height: 8),
              const BuildSettingItem(
                isLogout: true,
                title: logout,
                leadingIcon: FontAwesomeIcons.arrowRightFromBracket,
                leadingColor: MyColors.deleteItem,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
