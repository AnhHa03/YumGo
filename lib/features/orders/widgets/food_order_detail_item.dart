import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/models/food.dart';

class FoodOrderDetailItem extends StatelessWidget {
  final Food food;
  const FoodOrderDetailItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Image.network(
            food.imageURL,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Text("1x", style: Theme.of(context).textTheme.bodySmall),
          SizedBox(width: 10),
          SizedBox(
            width: 180,
            child: Text(
              food.name,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Spacer(),
          Text(
            "57.000đ",
            style: TextStyle(
              fontSize: 14.0,
              color: AppColors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
