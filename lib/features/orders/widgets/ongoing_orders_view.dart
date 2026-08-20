import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/features/orders/widgets/order_item.dart';

class OngoingOrdersView extends StatefulWidget {
  const OngoingOrdersView({super.key});

  @override
  State<OngoingOrdersView> createState() => _OngoingOrdersViewState();
}

class _OngoingOrdersViewState extends State<OngoingOrdersView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.greyLight80),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return OrderItem();
        },
      ),
    );
  }
}
