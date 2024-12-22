// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/strings/routes.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/widgets/build_setting_item.dart';

List<Widget> buildTaskiItems(BuildContext context) {
  return [
    const BuildSettingItem(
        title: aboutUS, leadingIcon: FontAwesomeIcons.circleQuestion),
    const BuildSettingItem(
        title: faq, leadingIcon: FontAwesomeIcons.circleInfo),
    const BuildSettingItem(
        title: helpAndFeedback, leadingIcon: FontAwesomeIcons.bolt),
    const BuildSettingItem(
        title: supportUS, leadingIcon: FontAwesomeIcons.thumbsUp),
    BlocBuilder<GetTasksCubit, GetTasksState>(
      builder: (context, state) {
        return BuildSettingItem(
          isLogout: true,
          title: logout,
          leadingIcon: FontAwesomeIcons.arrowRightFromBracket,
          leadingColor: MyColors.deleteItem,
          onTap: () async {
            await BlocProvider.of<GetTasksCubit>(context)
                .deleteAllTasksAndSignOut();
            Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil(
                onboardingScreen, (Route<dynamic> route) => false);
          },
        );
      },
    ),
  ];
}
