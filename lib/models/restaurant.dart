import 'package:flutter/widgets.dart';

class Restaurant {
  final String name;
  final String logoPath;
  final String description;
  final double rating;
  final String address;
  final int time;

  Restaurant({
    required this.name,
    required this.logoPath,
    required this.description,
    required this.rating,
    required this.address,
    required this.time,
  });
}
