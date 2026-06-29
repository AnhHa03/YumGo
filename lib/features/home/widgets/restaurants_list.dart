import 'package:flutter/material.dart';

class RestaurantsList extends StatelessWidget {
  const RestaurantsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, __) {
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
                    "Quán ăn ngon",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text("Cơm, hủ tiếu,...", style: TextStyle(fontSize: 16.0)),
                  SizedBox(height: 14.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 4.0),
                      Text("4.9"),
                      SizedBox(width: 20.0),

                      const Icon(
                        Icons.add_location_alt_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(width: 4.0),
                      Text("2km"),
                      SizedBox(width: 20.0),

                      const Icon(
                        Icons.delivery_dining_outlined,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 4.0),
                      Text("20 phút"),
                      SizedBox(width: 20.0),
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
      },
    );
  }
}
