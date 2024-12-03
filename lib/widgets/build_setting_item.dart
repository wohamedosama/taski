import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/colors/my_colors.dart';

class BuildSettingItem extends StatelessWidget {
  const BuildSettingItem({
    super.key,
    this.onTap,
    required this.title,
    required this.leadingIcon,
    this.trailingIcon = FontAwesomeIcons.chevronRight,
    this.leadingColor = MyColors.lightColor,
  });
  final void Function()? onTap;
  final String title;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Color leadingColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon, color: leadingColor),
      title: Text(title, style: Theme.of(context).textTheme.headlineMedium),
      trailing: Icon(trailingIcon),
      onTap: onTap,
    );
  }
}
