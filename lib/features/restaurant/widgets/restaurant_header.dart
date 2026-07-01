import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/models/restaurant.dart';
import 'package:yumgo/widgets/app_icon.dart';

class RestaurantHeader extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantHeader({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 260.0,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.background,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.network(
            restaurant.imageURL,
            height: 180.0,
            width: width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurant.name,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Row(
                  children: [
                    AppIcon(
                      icon: AppIcons.star,
                      size: 24,
                      color: AppColors.yellow,
                    ),
                    Text(
                      restaurant.rating.toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(width: 30.0),
                    Text(
                      'Đánh giá',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(width: 30.0),
                    Text(
                      "${restaurant.time.toString()} phút",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
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
