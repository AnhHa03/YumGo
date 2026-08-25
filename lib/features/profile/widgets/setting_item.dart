import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/widgets/app_icon.dart';

class SettingItem extends StatelessWidget {
  final bool isEnable;
  final String icon;
  final Color? icon_color;
  final String title;
  final VoidCallback onTapSetting;
  late bool? isFinal;
  SettingItem({
    super.key,
    required this.isEnable,
    required this.icon,
    required this.title,
    required this.onTapSetting,
    required this.icon_color,
    this.isFinal,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapSetting,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 6, top: 6),
            child: Row(
              children: [
                AppIcon(icon: icon, size: 28, color: icon_color),
                SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: isEnable ? AppColors.black : AppColors.grey,
                  ),
                ),
                Spacer(),
                AppIcon(
                  icon: AppIcons.direction_right,
                  size: 24,
                  color: AppColors.greyLight,
                ),
              ],
            ),
          ),
          if (isFinal == null)
            Divider(thickness: 0.2, color: AppColors.greyLight),
        ],
      ),
    );
  }
}
