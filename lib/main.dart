import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:taski/constants/theme/app_theme.dart';
import 'package:taski/routes/app_router.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(const Duration(seconds: 20));
  FlutterNativeSplash.remove();
  runApp(Taski(
    approuters: AppRouters(),
  ));
}

class Taski extends StatelessWidget {
  const Taski({
    super.key,
    required this.approuters,
  });

  final AppRouters approuters;
  @override

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      onGenerateRoute: approuters.generateRoute,
    );
  }
}
