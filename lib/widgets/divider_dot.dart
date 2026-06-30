import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';

class DividerDot extends StatelessWidget {
  const DividerDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Text(
        "|",
        style: TextStyle(
          color: AppColors.greyLight,
          fontSize: 16.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
