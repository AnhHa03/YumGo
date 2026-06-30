import 'package:yumgo/models/restaurant.dart';

final List<Restaurant> restaurants = [
  Restaurant(
    name: "Jollibee",
    imageURL:
        'https://gigamall.com.vn/data/2019/05/06/09314542_logo-jollibee-500x500.jpg',
    description: "Gà rán, mì ý, kem,...",
    rating: 4.8,
    address: "1.6",
    time: 23,
    isFavorite: false,
  ),
  Restaurant(
    name: "Starbucks",
    imageURL:
        'https://cdn.advertisingvietnam.com/image/2021/09/27/1632725675639.png',
    description: "Tea latte, Refreshing tea, Pure tea",
    rating: 4.8,
    address: "1.6",
    time: 23,
    isFavorite: false,
  ),
  Restaurant(
    name: "The Pizza Company",
    imageURL:
        'https://cdn.aptoide.com/imgs/3/f/b/3fb979bc98b859a404410410d6665829_fgraphic.png',
    description: "Pizza hải sản, Pizza cheese",
    rating: 4.8,
    address: "1.6",
    time: 23,
    isFavorite: false,
  ),
];

List<Restaurant> getRestaurantsList() {
  return restaurants;
}
