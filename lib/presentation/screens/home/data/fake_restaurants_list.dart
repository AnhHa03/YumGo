import 'package:yumgo/domain/models/restaurant.dart';

final List<Restaurant> restaurants = [
  Restaurant(
    name: "Jollibee",
    imageURL: '',
    description: "Gà rán, mì ý, kem,...",
    rating: 4.8,
    address: "1.6",
    time: 23,
    isFavorite: false,
  ),
  Restaurant(
    name: "Jollibee",
    imageURL: '',
    description: "Gà rán, mì ý, kem,...",
    rating: 4.8,
    address: "1.6",
    time: 23,
    isFavorite: false,
  ),
  Restaurant(
    name: "Jollibee",
    imageURL: '',
    description: "Gà rán, mì ý, kem,...",
    rating: 4.8,
    address: "1.6",
    time: 23,
    isFavorite: false,
  ),
];

List<Restaurant> getRestaurantsList() {
  return restaurants;
}
