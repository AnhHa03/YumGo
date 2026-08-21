import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/features/orders/models/order_status.dart';
import 'package:yumgo/features/orders/widgets/delivery_tracking.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chi tiết đơn hàng")),
      body: Container(
        decoration: BoxDecoration(color: AppColors.background),
        child: Column(
          children: [DeliveryTracking(status: OrderStatus.preparing)],
        ),
      ),
    );
  }
}
