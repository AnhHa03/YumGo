import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/features/home/data/fake_restaurants_list.dart';
import 'package:yumgo/features/home/widgets/restaurant_item.dart';
import 'package:yumgo/models/restaurant.dart';

class RestaurantsList extends StatelessWidget {
  const RestaurantsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Restaurant> restaurants = getRestaurantsList();
    return ListView.separated(
      itemCount: restaurants.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        Restaurant restaurant = restaurants[index];
        return RestaurantItem(restaurant: restaurant);
      },
      separatorBuilder: (context, index) => const Divider(
        thickness: 0.5,
        color: AppColors.greyLight,
        height: 20.0,
      ),
    );
  }
}
