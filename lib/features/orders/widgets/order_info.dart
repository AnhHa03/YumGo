import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/widgets/app_icon.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Thông tin đơn hàng",
            style: TextStyle(
              fontSize: 14.0,
              color: AppColors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              Text(
                "Mã đơn hàng",
                style: TextStyle(fontSize: 14.0, color: AppColors.greyDark),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: "order_id"));
                },
                icon: AppIcon(
                  icon: AppIcons.copy_outline,
                  size: 20.0,
                  color: AppColors.primaryDark,
                ),
              ),
              Text(
                "#25753-0364452",
                style: TextStyle(color: AppColors.greyDark, fontSize: 14.0),
              ),
            ],
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Dụng cụ ăn uống",
                style: TextStyle(fontSize: 14.0, color: AppColors.greyDark),
              ),
              Text(
                "Lấy dụng cụ ăn uống",
                style: TextStyle(color: AppColors.greyDark, fontSize: 14.0),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ghi chú",
                style: TextStyle(fontSize: 14.0, color: AppColors.greyDark),
              ),
              Text(
                "Không có",
                style: TextStyle(color: AppColors.greyDark, fontSize: 14.0),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Thời gian đặt hàng",
                style: TextStyle(fontSize: 14.0, color: AppColors.greyDark),
              ),
              Text(
                "11:36 20/08/2026",
                style: TextStyle(color: AppColors.greyDark, fontSize: 14.0),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Thanh toán",
                style: TextStyle(fontSize: 14.0, color: AppColors.greyDark),
              ),
              Text(
                "Tiền mặt",
                style: TextStyle(color: AppColors.greyDark, fontSize: 14.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
