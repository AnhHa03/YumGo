import 'package:flutter/material.dart';
import 'package:yumgo/features/restaurant/widgets/food_list.dart';
import 'package:yumgo/features/restaurant/widgets/restaurant_header.dart';
import 'package:yumgo/models/restaurant.dart';

class RestaurantDetailScreen extends StatefulWidget {
  final Restaurant restaurant;
  const RestaurantDetailScreen({super.key, required this.restaurant});

  @override
  State<RestaurantDetailScreen> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
  Restaurant get restaurant => widget.restaurant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          RestaurantHeader(restaurant: restaurant),
          Padding(padding: const EdgeInsets.all(20.0), child: FoodList()),
        ],
      ),
    );
  }
}
