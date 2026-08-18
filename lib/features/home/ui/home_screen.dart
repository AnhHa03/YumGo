import 'package:flutter/material.dart';
import 'package:yumgo/features/home/widgets/category_grid.dart';
import 'package:yumgo/features/home/widgets/search_header.dart';
import 'package:yumgo/features/search/ui/search_screen.dart';
import 'package:yumgo/widgets/app_search_field.dart';
import 'package:yumgo/features/home/widgets/restaurants_list.dart';
import 'package:yumgo/features/home/widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SearchHeader(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SearchScreen()),
                );
              },
              controller: TextEditingController(),
            ),
            CategoryGrid(),
            SectionTitle(),
            RestaurantsList(),
          ],
        ),
      ),
    );
  }
}
