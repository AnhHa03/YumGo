import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/widgets/app_icon.dart';
import 'package:yumgo/widgets/divider_dot.dart';

class OrderAddressSection extends StatelessWidget {
  final String shop_name;
  final String shop_address;
  final String user_name;
  final String user_address;
  final String user_phone;
  const OrderAddressSection({
    super.key,
    required this.shop_name,
    required this.shop_address,
    required this.user_name,
    required this.user_address,
    required this.user_phone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AppIcon(
                icon: AppIcons.location,
                size: 20.0,
                color: AppColors.textSecondary,
              ),
              SizedBox(width: 4),
              Text(
                "Từ",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyDark,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Text(
                shop_name,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              AppIcon(
                icon: AppIcons.direction_right,
                size: 22,
                color: AppColors.greyDark,
              ),
            ],
          ),
          Text(
            shop_address,
            style: TextStyle(color: AppColors.greyDark, fontSize: 12.0),
          ),
          SizedBox(height: 20.0),

          Row(
            children: [
              AppIcon(
                icon: AppIcons.location,
                size: 20,
                color: AppColors.primaryDark,
              ),
              SizedBox(width: 4),
              Text(
                "Đến",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyDark,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                user_name,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              DividerDot(),
              Text(
                user_phone,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text(
            user_address,
            style: TextStyle(color: AppColors.greyDark, fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}
