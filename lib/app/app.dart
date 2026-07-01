import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_theme.dart';
import 'package:yumgo/features/home/data/fake_restaurants_list.dart';
import 'package:yumgo/features/home/home_screen.dart';
import 'package:yumgo/features/restaurant/ui/restaurant_detail_screen.dart';

class YumGo extends StatelessWidget {
  const YumGo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: RestaurantDetailScreen(restaurant: getRestaurantsList()[0]),
    );
  }
}
