import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/widgets/app_bar_title.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Profile'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            BuildSettingItem(
                title: changeAppTheme,
                leadingIcon: FontAwesomeIcons.penToSquare),
            SizedBox(height: 16),
            BuildSettingItem(
                title: changeapplanguage,
                leadingIcon: FontAwesomeIcons.language),
          ],
        ),
      ),
    );
  }
}

class BuildSettingItem extends StatelessWidget {
  const BuildSettingItem({
    super.key,
    this.onTap,
    required this.title,
    required this.leadingIcon,
    this.trailingIcon = FontAwesomeIcons.chevronRight,
  });
  final void Function()? onTap;
  final String title;
  final IconData leadingIcon;
  final IconData trailingIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Text(title, style: Theme.of(context).textTheme.headlineMedium),
      trailing: Icon(trailingIcon),
      onTap: onTap,
    );
  }
}
