import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/features/orders/models/fake_food_list.dart';
import 'package:yumgo/features/orders/widgets/food_order_detail_item.dart';
import 'package:yumgo/models/food.dart';
import 'package:yumgo/widgets/app_icon.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  bool isPaid = true;
  final List<Food> _foods = foods;
  bool isExpanded = foods.length < 3;
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
          Text(
            "Tóm tắt đơn hàng",
            style: TextStyle(
              fontSize: 14.0,
              color: AppColors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: isExpanded ? foods.length : 3,
            itemBuilder: (context, index) {
              return FoodOrderDetailItem(food: _foods[index]);
            },
          ),
          SizedBox(height: 30),

          if (foods.length > 3)
            Row(
              children: [
                Expanded(
                  child: Divider(thickness: 0.4, color: AppColors.greyLight),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                    child: Text(
                      isExpanded ? "Thu gọn" : "Xem thêm",
                      style: TextStyle(fontSize: 12.0, color: AppColors.grey),
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(thickness: 0.4, color: AppColors.greyLight),
                ),
              ],
            ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tổng (3 món)",
                style: TextStyle(
                  fontSize: 14.0,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "153.000đ",
                style: TextStyle(
                  fontSize: 14.0,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Phí giao hàng",
                style: TextStyle(fontSize: 14.0, color: AppColors.greyDark),
              ),
              Text(
                "15.300đ",
                style: TextStyle(fontSize: 14.0, color: AppColors.black),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Phí áp dụng",
                style: TextStyle(
                  fontSize: 14.0,
                  color: const Color.fromARGB(255, 66, 51, 51),
                ),
              ),
              Text(
                "1.000đ",
                style: TextStyle(fontSize: 14.0, color: AppColors.black),
              ),
            ],
          ),
          SizedBox(height: isPaid ? 10.0 : 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (isPaid)
                AppIcon(
                  icon: AppIcons.paid,
                  size: 60.0,
                  color: AppColors.greyLight,
                ),
              SizedBox(width: 10),
              Text(
                "169.300đ",
                style: TextStyle(
                  fontSize: 14.0,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
