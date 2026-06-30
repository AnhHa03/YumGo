import 'package:flutter/material.dart';
import 'package:yumgo/features/home/data/categories_list.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = getCategoriesList();
    return Container(
      height: 200.0,
      padding: EdgeInsetsGeometry.only(top: 20.0),
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          Category category = categories[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(category.imageURL, height: 60.0, width: 60.0),
              Text(category.name, textAlign: TextAlign.center),
            ],
          );
        },
      ),
    );
  }
}
