import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.add_location_alt_outlined),
            SizedBox(width: 10.0),
            Expanded(
              child: Text(
                "78 Đường số 8, phường Bến Thành, Thành phố Hồ Chí Minh",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Colors.deepOrangeAccent,
            hintText: "Tìm kiếm...",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
