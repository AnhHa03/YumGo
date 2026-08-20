import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/features/orders/widgets/order_item.dart';

class HistoryOrdersView extends StatefulWidget {
  const HistoryOrdersView({super.key});

  @override
  State<HistoryOrdersView> createState() => _HistoryOrdersViewState();
}

class _HistoryOrdersViewState extends State<HistoryOrdersView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.greyLight80),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return OrderItem();
        },
      ),
    );
  }
}
