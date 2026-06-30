import 'package:flutter/material.dart';
import 'package:yumgo/features/home/widgets/category_grid.dart';
import 'package:yumgo/features/home/widgets/header.dart';
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
            Header(),
            CategoryGrid(),
            SectionTitle(),
            RestaurantsList(),
          ],
        ),
      ),
    );
  }
}
