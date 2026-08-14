import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/widgets/app_icon.dart';

class AppSearchField extends StatelessWidget {
  final String hint;
  final FocusNode? focusNode;
  const AppSearchField({super.key, required this.hint, this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: AppIcon(
            icon: AppIcons.search,
            size: 24,
            color: AppColors.primaryDark,
          ),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AppIcon(
            icon: AppIcons.remove,
            size: 16.0,
            color: AppColors.grey,
          ),
        ),
        // suffixIconConstraints: BoxConstraints(minHeight: 30.0, minWidth: 30.0),
        border: OutlineInputBorder(),
      ),
    );
  }
}
