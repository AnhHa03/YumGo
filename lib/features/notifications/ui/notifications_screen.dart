import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/features/notifications/data/fake_notification_list.dart';
import 'package:yumgo/features/notifications/widgets/notification_item.dart';
import 'package:yumgo/features/orders/ui/order_detail_screen.dart';
import 'package:yumgo/models/notif.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    late List<Notif> _notifications = notifications;
    late int _unreadCount = _notifications
        .where((notif) => !notif.isRead)
        .length;
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông báo"),

        actions: [
          if (_unreadCount > 0)
            GestureDetector(
              onTap: () {
                setState(() {
                  for (final notif in notifications) {
                    notif.isRead = true;
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "Đọc tất cả (${_unreadCount})",
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: AppColors.backgroundGrey),
        child: ListView.builder(
          itemCount: _notifications.length,
          itemBuilder: (context, index) {
            Notif _notif = _notifications[index];
            return NotificationItem(
              notif: _notif,
              onTapNotif: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => OrderDetailScreen()),
                );
                setState(() {
                  _notif.isRead = true;
                });
              },
            );
          },
        ),
      ),
    );
  }
}
