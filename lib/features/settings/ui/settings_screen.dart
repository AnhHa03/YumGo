import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/features/settings/widgets/app_settings.dart';
import 'package:yumgo/features/settings/widgets/support_policy.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      appBar: AppBar(title: Text("Cài đặt")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [AppSettings(), SupportPolicy()]),
      ),
    );
  }
}
