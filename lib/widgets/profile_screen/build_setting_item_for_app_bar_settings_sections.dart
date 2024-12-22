import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/widgets/build_setting_item.dart';

List<Widget> buildAppSettingsItems(BuildContext context) {
  return [
    BuildSettingItem(
      title: changeAppTheme,
      leadingIcon: FontAwesomeIcons.penToSquare,
      onTap: () {
        BlocProvider.of<GetTasksCubit>(context).changeAppTheme();
      },
    ),
    const BuildSettingItem(
        title: changeapplanguage, leadingIcon: FontAwesomeIcons.language),
  ];
}
