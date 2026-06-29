import 'package:flutter/widgets.dart';

class Restaurant {
  final String name;
  final String imageURL;
  final String description;
  final double rating;
  final String address;
  final int time;
  final bool isFavorite;

  Restaurant({
    required this.name,
    required this.imageURL,
    required this.description,
    required this.rating,
    required this.address,
    required this.time,
    required this.isFavorite,
  });
}
