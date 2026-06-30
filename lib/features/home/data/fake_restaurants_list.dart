import 'package:yumgo/models/restaurant.dart';

final List<Restaurant> restaurants = [
  Restaurant(
    name: "Jollibee - Nguyễn Gia Trí",
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
  Restaurant(
    name: "Highlands Coffee",
    imageURL:
        'https://www.highlandscoffee.com.vn/vnt_upload/weblink/red_BG_logo800.png',
    description: "Cà phê phin, trà sen vàng, freeze",
    rating: 4.7,
    address: "2.0",
    time: 20,
    isFavorite: false,
  ),
  Restaurant(
    name: "Phở 24",
    imageURL:
        'https://cdn.prod.website-files.com/5fb85f26f126ce08d792d2d9/609aa6fa9ad83f1dc50eeb96_Before_pho24.png',
    description: "Phở bò, phở gà, bún",
    rating: 4.6,
    address: "1.8",
    time: 25,
    isFavorite: false,
  ),
  Restaurant(
    name: "Bánh Mì Huỳnh Hoa",
    imageURL:
        'https://cdn1.vieclam24h.vn/tvn/images/default/2021/06/25/images/162458606234.png',
    description: "Bánh mì đặc biệt, pate, chả lụa",
    rating: 4.9,
    address: "2.5",
    time: 15,
    isFavorite: false,
  ),
];

List<Restaurant> getRestaurantsList() {
  return restaurants;
}
