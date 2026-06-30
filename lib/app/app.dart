import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_theme.dart';
import 'package:yumgo/features/home/home_screen.dart';

class YumGo extends StatelessWidget {
  const YumGo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.lightTheme, home: HomeScreen());
  }
}
