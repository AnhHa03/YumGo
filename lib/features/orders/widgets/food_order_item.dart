import 'package:flutter/material.dart';
import 'package:yumgo/models/food.dart';

class FoodOrderItem extends StatelessWidget {
  final Food food;
  const FoodOrderItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              food.imageURL,
              height: 100.0,
              width: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            food.name,
            style: TextStyle(fontSize: 12.0, overflow: TextOverflow.ellipsis),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
