import 'package:yumgo/models/food.dart';
import 'package:yumgo/models/order.dart';

final List<Food> foods = [
  Food(
    name: "Mì Kim Chi Bò",
    price: '65.000đ',
    description: 'description',
    imageURL:
        'https://gigamall.com.vn/data/2019/05/06/09314542_logo-jollibee-500x500.jpg',
    rating: '49',
    favourite: 20,
  ),

  Food(
    name: "Bánh Xếp Hàn Quốc Chiên ",
    price: '39.000đ',
    description: 'description',
    imageURL:
        'https://gigamall.com.vn/data/2019/05/06/09314542_logo-jollibee-500x500.jpg',
    rating: '49',
    favourite: 20,
  ),

  Food(
    name: "Mì Kim Chi Hải Sản",
    price: '65.000đ',
    description: 'description',
    imageURL:
        'https://gigamall.com.vn/data/2019/05/06/09314542_logo-jollibee-500x500.jpg',
    rating: '49',
    favourite: 20,
  ),
];

final List<Order> orders = [
  Order(order_id: "#23964-3325753"),
  Order(order_id: "#25753-0364452"),
  Order(order_id: "#25753-0364452"),
  Order(order_id: "#25753-0364452"),
  Order(order_id: "#25753-0364452"),
];
