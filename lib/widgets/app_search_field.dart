import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/widgets/app_icon.dart';

class AppSearchField extends StatefulWidget {
  final String hint;
  final FocusNode? focusNode;
  final TextEditingController controller;
  const AppSearchField({
    super.key,
    required this.hint,
    this.focusNode,
    required this.controller,
  });

  @override
  State<AppSearchField> createState() => _AppSearchFieldState();
}

class _AppSearchFieldState extends State<AppSearchField> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    setState(() {});
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasText = widget.controller.text.isNotEmpty;
    return TextField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      style: TextStyle(
        fontSize: 16.0,
        color: AppColors.black,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: AppIcon(
            icon: AppIcons.search,
            size: 24,
            color: AppColors.primaryDark,
          ),
        ),
        hintText: widget.hint,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: hasText
            ? Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    widget.controller.clear();
                  },
                  child: AppIcon(
                    icon: AppIcons.remove,
                    size: 16.0,
                    color: AppColors.grey,
                  ),
                ),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide(color: AppColors.grey, width: 0.8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide(color: AppColors.grey, width: 0.8),
        ),
      ),
    );
  }
}
