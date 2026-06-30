import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // Icon(Icons.add_location_alt_outlined),
            SvgPicture.asset(
              'assets/icons/location.svg',
              width: 24,
              height: 24,
              color: Theme.of(context).colorScheme.primary,
            ),
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
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 24,
                height: 24,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            // prefixIconConstraints: const BoxConstraints(
            //   minHeight: 40,
            //   maxWidth: 40,
            // ),
            hintText: "Tìm kiếm...",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
