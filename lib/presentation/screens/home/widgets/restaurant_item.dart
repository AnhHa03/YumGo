import 'package:flutter/material.dart';
import 'package:yumgo/domain/models/restaurant.dart';

class RestaurantItem extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantItem({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Row(
        children: [
          SizedBox(width: 120.0, child: Icon(Icons.store)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0),
              Text(
                restaurant.name,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(restaurant.description, style: TextStyle(fontSize: 16.0)),
              SizedBox(height: 14.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 4.0),
                  Text(restaurant.rating.toString()),
                  SizedBox(width: 20.0),

                  const Icon(
                    Icons.add_location_alt_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(width: 4.0),
                  Text("${restaurant.address}km"),
                  SizedBox(width: 20.0),

                  const Icon(
                    Icons.delivery_dining_outlined,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 4.0),
                  Text("${restaurant.time} phút"),
                ],
              ),
              GestureDetector(
                child: Text(
                  "Xem ngay",
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
