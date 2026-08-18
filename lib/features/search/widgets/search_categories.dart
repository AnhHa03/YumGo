import 'package:flutter/material.dart';
import 'package:yumgo/features/home/data/categories_list.dart';

class SearchCategories extends StatelessWidget {
  const SearchCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Đề xuất", style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: 10),
        GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            mainAxisSpacing: 36,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            Category category = categories[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(category.image, height: 100.0, width: 100.0),
                Text(
                  category.name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
