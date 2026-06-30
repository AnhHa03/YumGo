import 'package:flutter/material.dart';
import 'package:yumgo/models/restaurant.dart';

class RestaurantItem extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantItem({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 160.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.0),
              bottomLeft: Radius.circular(18.0),
            ),
            child: Image.network(
              restaurant.imageURL.isNotEmpty
                  ? restaurant.imageURL
                  : 'https://images.unsplash.com/photo-1600891964599-f61ba0e24092',
              height: 160.0,
              width: 130.0,
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    restaurant.description,
                    style: TextStyle(fontSize: 16.0),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 4.0),
                      Text(restaurant.rating.toString()),
                      SizedBox(width: 20.0),
                      Text("${restaurant.address}km"),
                      SizedBox(width: 20.0),
                      Text("${restaurant.time} phút"),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Xem ngay",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
