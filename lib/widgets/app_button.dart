import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';

class AppButton extends StatefulWidget {
  late bool isEnable;
  final double height;
  final double width;
  final String title;
  late VoidCallback? onTap;
  AppButton({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    this.onTap,
    required this.isEnable,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.isEnable ? AppColors.primary : AppColors.greyLight60,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: widget.isEnable ? widget.onTap : null,
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.isEnable ? AppColors.white : AppColors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
