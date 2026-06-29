import 'package:flutter/material.dart';
import 'package:yumgo/data/fake_restaurants_list.dart';
import 'package:yumgo/features/home/widgets/restaurant_item.dart';
import 'package:yumgo/models/restaurant.dart';

class RestaurantsList extends StatelessWidget {
  const RestaurantsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Restaurant> restaurants = getRestaurantsList();
    return ListView.builder(
      itemCount: restaurants.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return RestaurantItem(restaurant: restaurants[1]);
      },
    );
  }
}
