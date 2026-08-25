import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/widgets/app_icon.dart';

class AppSettings extends StatelessWidget {
  final VoidCallback onTapLanguage;
  const AppSettings({super.key, required this.onTapLanguage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Cài đặt ứng dụng",
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.fromLTRB(14, 10, 10, 10),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              AppSettingsItem(onTapLanguage, "Ngôn ngữ", "Tiếng Việt", true),
              Divider(thickness: 0.2, color: AppColors.greyLight),
              AppSettingsItem(() {}, "Chế độ", "Sáng", false),
            ],
          ),
        ),
      ],
    );
  }

  Padding AppSettingsItem(
    VoidCallback onTapSetting,
    String title,
    String subTitle,
    bool isEnable,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 6),
      child: GestureDetector(
        onTap: onTapSetting,
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: isEnable ? AppColors.black : AppColors.grey,
              ),
            ),
            Spacer(),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 18,
                color: isEnable ? AppColors.black : AppColors.grey,
              ),
            ),
            AppIcon(
              icon: AppIcons.direction_right,
              size: 24,
              color: AppColors.greyLight,
            ),
          ],
        ),
      ),
    );
  }
}
