import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/widgets/app_icon.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AppIcon(
              icon: AppIcons.location,
              size: 24,
              color: AppColors.primaryDark,
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
              child: AppIcon(
                icon: AppIcons.search,
                size: 24,
                color: AppColors.primaryDark,
              ),
            ),
            hintText: "Tìm kiếm...",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
