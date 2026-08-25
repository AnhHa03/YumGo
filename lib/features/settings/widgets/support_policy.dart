import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/widgets/app_icon.dart';

class SupportPolicy extends StatelessWidget {
  const SupportPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          "Chính sách quy định",
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
              Setting_Item(
                () {
                  //
                },
                "Điều khoản sử dụng",
                false,
              ),
              Divider(thickness: 0.2, color: AppColors.greyLight),
              Setting_Item(
                () {
                  //
                },
                "Chính sách bảo mật",
                false,
              ),
            ],
          ),
        ),

        SizedBox(height: 20),
        Text(
          "Hỗ trợ",
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
              Setting_Item(
                () {
                  //
                },
                "Chia sẻ phản hồi",
                false,
              ),
              Divider(thickness: 0.2, color: AppColors.greyLight),
              Setting_Item(
                () {
                  //
                },
                "Thông tin về YumGo",
                false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding Setting_Item(VoidCallback onTapSupport, String title, bool isEnable) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6, top: 6),
      child: GestureDetector(
        onTap: onTapSupport,
        child: Column(
          children: [
            Row(
              children: [
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
          ],
        ),
      ),
    );
  }
}
