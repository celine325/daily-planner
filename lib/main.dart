import 'package:daily_planner/features/home/home_screen.dart';
import 'package:daily_planner/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DailyPlanner());
}

class DailyPlanner extends StatelessWidget {
  const DailyPlanner({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Planner',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}
