import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      "Cơm",
      "Hủ tíu/Bún bò",
      "Ăn vặt",
      "Pizza",
      "Burger",
      "Trà sữa",
      "Healthy",
    ];
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 40.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (_, index) {
          return Column(
            children: [
              CircleAvatar(radius: 24.0, child: Icon(Icons.fastfood)),
              SizedBox(height: 10.0),
              Text(categories[index]),
            ],
          );
        },
      ),
    );
  }
}
