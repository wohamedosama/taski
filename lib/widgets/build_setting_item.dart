import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
