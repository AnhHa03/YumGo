// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Food {
  final String name;
  final String price;
  final String description;
  final String imageURL;
  final String rating;
  final int favourite;
  Food({
    required this.name,
    required this.price,
    required this.description,
    required this.imageURL,
    required this.rating,
    required this.favourite,
  });
}
