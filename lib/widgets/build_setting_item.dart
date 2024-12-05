import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildSettingItem extends StatelessWidget {
  const BuildSettingItem({
    super.key,
    this.onTap,
    required this.title,
    required this.leadingIcon,
    this.trailingIcon,
    this.leadingColor,
    this.isLogout = false,
  });
  final void Function()? onTap;
  final String title;
  final IconData leadingIcon;
  final IconData? trailingIcon;
  final Color? leadingColor;
  final bool isLogout;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon, color: leadingColor),
      title: Text(title, style: Theme.of(context).textTheme.headlineMedium),
      trailing: Icon(
        isLogout ? null : FontAwesomeIcons.chevronRight,
      ),
      onTap: onTap,
    );
  }
}
