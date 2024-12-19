import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/widgets/app_bar_title.dart';
import 'package:taski/widgets/build_setting_item.dart';
import 'package:taski/widgets/profile_screen/build_heading_section_in_the_profile_screen.dart';

import 'package:taski/widgets/profile_screen/build_setting_item_taski_section.dart';

// ! refactor that page to be less code and more readable
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const AppBarTitle(title: 'Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<GetTasksCubit, GetTasksState>(
          builder: (context, state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App Settings Section
              const BuildHeadingSectionInProfileScreen(title: 'App Settings'),
              const SizedBox(height: 8),
              ...[
                BuildSettingItem(
                  title: changeAppTheme,
                  leadingIcon: FontAwesomeIcons.penToSquare,
                  onTap: () {
                    BlocProvider.of<GetTasksCubit>(context).changeAppTheme();
                  },
                ),
                const BuildSettingItem(
                    title: changeapplanguage,
                    leadingIcon: FontAwesomeIcons.language),
              ],

              // Taski Section
              const SizedBox(height: 16),
              const BuildHeadingSectionInProfileScreen(title: 'Taski'),
              const SizedBox(height: 8),
              ...buildSettingItemsForTaskiSections(),
            ],
          ),
        ),
      ),
    );
  }
}
