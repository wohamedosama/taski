// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';
import 'package:taski/widgets/app_bar_title.dart';
import 'package:taski/widgets/profile_screen/build_heading_section_in_the_profile_screen.dart';
import 'package:taski/widgets/profile_screen/build_setting_item_for_app_bar_settings_sections.dart';
import 'package:taski/widgets/profile_screen/build_setting_item_taski_section.dart';

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
              ...buildAppSettingsItems(context),

              // Taski Section
              const SizedBox(height: 16),
              const BuildHeadingSectionInProfileScreen(title: 'Taski'),
              const SizedBox(height: 8),
              ...buildTaskiItems(context),
            ],
          ),
        ),
      ),
    );
  }
}
