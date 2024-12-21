import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taski/bloc/get_tasks_cubit/cubit/get_tasks_cubit.dart';
import 'package:taski/constants/strings/routes.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/constants/theme/app_theme.dart';
import 'package:taski/models/tasks/task_model.dart';
import 'package:taski/my_observer.dart';
import 'package:taski/routes/app_router.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(const Duration(seconds: 20));
  FlutterNativeSplash.remove();
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();

  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>(kTaskBox);

  // Initialize shared preferences
  final prefs = await SharedPreferences.getInstance();
  final bool isFirstTime = prefs.getBool(kOnBaording) ?? true;

  runApp(Taski(
    approuters: AppRouters(),
    isFirstTime: isFirstTime,
  ));
}

class Taski extends StatelessWidget {
  const Taski({
    super.key,
    required this.approuters,
    this.startWidget,
    required this.isFirstTime,
  });

  final AppRouters approuters;
  final Widget? startWidget;
  final bool isFirstTime;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetTasksCubit()..fetchAllTask(),
      child: BlocBuilder<GetTasksCubit, GetTasksState>(
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: BlocProvider.of<GetTasksCubit>(context).isDark
              ? ThemeMode.light
              : ThemeMode.dark,
          onGenerateRoute: approuters.generateRoute,
          initialRoute: isFirstTime ? onboardingScreen : navbar,
        ),
      ),
    );
  }
}
