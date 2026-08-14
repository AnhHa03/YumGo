import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/features/search/ui/search_screen.dart';
import 'package:yumgo/widgets/app_icon.dart';
import 'package:yumgo/widgets/app_search_field.dart';

class SearchHeader extends StatelessWidget {
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  const SearchHeader({super.key, this.onTap, this.focusNode});

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
        GestureDetector(
          onTap: onTap,
          child: AbsorbPointer(
            absorbing: onTap != null,
            child: AppSearchField(hint: "Tìm kiếm...", focusNode: focusNode),
          ),
        ),
      ],
    );
  }
}
