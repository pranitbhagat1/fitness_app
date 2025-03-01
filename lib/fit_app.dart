import 'package:fitness/presentation/routes/go_routes.dart';
import 'package:fitness/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

class FitConnectApp extends StatelessWidget {
  const FitConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "FitConnect",
      builder: (context, child) => Container(child: child),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme(context),
      routerConfig: RouteGenerator.router,
    );
  }
}
