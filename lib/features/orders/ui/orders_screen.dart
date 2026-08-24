import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/features/orders/ui/order_search_screen.dart';
import 'package:yumgo/features/orders/widgets/history_orders_view.dart';
import 'package:yumgo/features/orders/widgets/ongoing_orders_view.dart';
import 'package:yumgo/widgets/app_icon.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Đơn hàng"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Đang đến"),
              Tab(text: "Lịch sử"),
            ],
          ),

          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => OrderSearchScreen()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: AppIcon(
                  icon: AppIcons.search,
                  size: 30.0,
                  color: AppColors.primaryDark,
                ),
              ),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(color: AppColors.backgroundGrey),
          child: TabBarView(
            children: [OngoingOrdersView(), HistoryOrdersView()],
          ),
        ),
      ),
    );
  }
}
