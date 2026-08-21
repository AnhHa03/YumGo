import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/features/orders/models/fake_food_list.dart';
import 'package:yumgo/features/orders/ui/order_detail_screen.dart';
import 'package:yumgo/features/orders/widgets/order_item.dart';
import 'package:yumgo/models/order.dart';

class OngoingOrdersView extends StatefulWidget {
  const OngoingOrdersView({super.key});

  @override
  State<OngoingOrdersView> createState() => _OngoingOrdersViewState();
}

class _OngoingOrdersViewState extends State<OngoingOrdersView> {
  final List<Order> _orders = orders;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return OrderItem(
          order: orders[index],
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
