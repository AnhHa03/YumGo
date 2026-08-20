import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/features/orders/data/fake_food_list.dart';
import 'package:yumgo/features/orders/widgets/food_order_item.dart';
import 'package:yumgo/widgets/app_icon.dart';

class OrderItem extends StatelessWidget {
  final visibleFoods = foods.take(2).toList();
  OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // go to order_details_screen
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Đồ ăn",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(width: 5.0),
                Text(
                  "#23964-3325753",
                  style: TextStyle(fontSize: 14.0, color: AppColors.grey),
                ),
                const Spacer(),
                Text(
                  "20/08/2026",
                  style: TextStyle(fontSize: 14.0, color: AppColors.grey),
                ),
              ],
            ),

            SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                // go to restaurant_detail_screen
              },
              child: Row(
                children: [
                  AppIcon(
                    icon: AppIcons.security,
                    size: 22.0,
                    color: AppColors.orange,
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      //restaurant_name
                      "Mì Cay Seoul - Tô Ngọc Vân",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  AppIcon(
                    icon: AppIcons.direction_right,
                    size: 24.0,
                    color: AppColors.black,
                  ),
                ],
              ),
            ),

            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: visibleFoods
                      .map(
                        (food) => SizedBox(
                          width: 120,
                          height: 170,
                          child: FoodOrderItem(food: food),
                        ),
                      )
                      .toList(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      // total prize
                      "153.000đ",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          // số lượng món ăn
                          "3 món",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: AppColors.grey,
                          ),
                        ),
                        AppIcon(
                          icon: AppIcons.direction_right,
                          size: 22.0,
                          color: AppColors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Divider(thickness: 0.2, color: AppColors.greyLight),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hoàn thành", style: TextStyle(fontSize: 16.0)),
                Container(
                  height: 40.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: AppColors.primaryDark,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      // đặt lại đơn hàng
                    },
                    child: Text(
                      "Đặt lại",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: AppColors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
