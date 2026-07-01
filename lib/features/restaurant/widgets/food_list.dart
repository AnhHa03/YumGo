import 'package:flutter/material.dart';
import 'package:yumgo/features/restaurant/widgets/food_item.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Name", style: Theme.of(context).textTheme.bodyLarge),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return FoodItem();
            },
          ),
        ],
      ),
    );
  }
}
