import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/features/search/data/histories.dart';
import 'package:yumgo/widgets/app_icon.dart';

class SearchHistory extends StatelessWidget {
  final ValueChanged<String> onTap;
  final VoidCallback onClear;
  final ValueChanged<String> onRemove;
  const SearchHistory({
    super.key,
    required this.onTap,
    required this.onClear,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Lịch sử tìm kiếm",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            GestureDetector(
              onTap: onClear,
              child: Text("Xóa", style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
        Column(
          children: searchHistories.map((history) {
            return ListTile(
              contentPadding: EdgeInsets.fromLTRB(10.0, 0, 6.0, 0),
              minLeadingWidth: 0,
              dense: true,
              leading: AppIcon(
                icon: AppIcons.search,
                size: 18,
                color: AppColors.black,
              ),
              title: GestureDetector(
                onTap: () => onTap(history.key),
                child: Text(
                  history.key,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              trailing: GestureDetector(
                onTap: () => onRemove(history.key),
                child: AppIcon(
                  icon: AppIcons.remove,
                  size: 24,
                  color: AppColors.black,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
