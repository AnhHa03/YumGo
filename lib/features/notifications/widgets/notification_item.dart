import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/core/theme/constants/app_images.dart';
import 'package:yumgo/models/notif.dart';
import 'package:yumgo/widgets/app_icon.dart';
import 'package:intl/intl.dart';

class NotificationItem extends StatelessWidget {
  final VoidCallback onTapNotif;
  final Notif notif;
  const NotificationItem({
    super.key,
    required this.notif,
    required this.onTapNotif,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapNotif,
      child: Container(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: notif.isRead
              ? AppColors.backgroundWhite
              : AppColors.greenLight60,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImages.yumgo_logo, height: 40.0, width: 40.0),
            SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notif.title,
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    notif.message,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: AppColors.greyDark,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    DateFormat('dd/mm/yyyy HH:mm').format(notif.createdAt),
                    style: TextStyle(
                      fontSize: 12.0,
                      color: AppColors.greyLight,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
