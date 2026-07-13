import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/features/restaurant/data/food.dart';
import 'package:yumgo/features/restaurant/widgets/add_to_cart_button.dart';
import 'package:yumgo/widgets/app_icon.dart';

class FoodItem extends StatelessWidget {
  final Food food;
  const FoodItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
      height: 130.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            food.imageURL,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(food.name, style: Theme.of(context).textTheme.bodyLarge),
                Text(
                  food.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Row(
                  children: [
                    Text(
                      '${food.rating} đã bán',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(
                      height: 16.0,
                      child: VerticalDivider(
                        thickness: 0.8,
                        color: AppColors.greyLight,
                      ),
                    ),
                    Text(
                      '${food.favourite.toString()} lượt thích',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      food.price,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    AddToCartButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
