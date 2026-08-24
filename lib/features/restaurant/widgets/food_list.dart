import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/features/restaurant/data/fake_food_list.dart';
import 'package:yumgo/models/food.dart';
import 'package:yumgo/features/restaurant/widgets/food_item.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Menu", style: Theme.of(context).textTheme.bodyLarge),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: food_list.length,
          itemBuilder: (context, index) {
            Food food = food_list[index];
            return FoodItem(food: food);
          },

          separatorBuilder: (context, index) => const Divider(
            thickness: 0.5,
            height: 12.0,
            color: AppColors.greyLight,
          ),
        ),
      ],
    );
  }
}
