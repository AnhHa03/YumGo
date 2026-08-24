import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/features/orders/models/fake_food_list.dart';
import 'package:yumgo/features/orders/ui/order_detail_screen.dart';
import 'package:yumgo/features/orders/widgets/order_item.dart';
import 'package:yumgo/models/order.dart';

class HistoryOrdersView extends StatefulWidget {
  const HistoryOrdersView({super.key});

  @override
  State<HistoryOrdersView> createState() => _HistoryOrdersViewState();
}

class _HistoryOrdersViewState extends State<HistoryOrdersView> {
  List<Order> _orders = orders;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return OrderItem(
          order: _orders[index],
          onTap: (order) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => OrderDetailScreen()),
            );
          },
        );
      },
    );
  }
}
