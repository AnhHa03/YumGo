import 'package:flutter/material.dart';
import 'package:yumgo/presentation/screens/home/home_screen.dart';

class YumGo extends StatelessWidget {
  const YumGo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
