import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/features/orders/models/order_status.dart';
import 'package:yumgo/features/orders/widgets/delivery_tracking.dart';
import 'package:yumgo/features/orders/widgets/order_address_section.dart';
import 'package:yumgo/features/orders/widgets/order_info.dart';
import 'package:yumgo/features/orders/widgets/order_summary.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chi tiết đơn hàng"),
        scrolledUnderElevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(color: AppColors.background),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Column(
            children: [
              DeliveryTracking(status: OrderStatus.confirmed),
              OrderAddressSection(
                shop_name: "Mì cay Seoul - Tô Ngọc Vân",
                shop_address:
                    "124 - 132 Tô Ngọc Vân, P Linh Tây, Thành phố Thủ Đức, TP HCM",
                user_name: "Mai Anh",
                user_address: "90 Đường sô 8 Trường Thọ, Thủ Đức, TP HCM",
                user_phone: "0123456789",
              ),
              OrderSummary(),
              OrderInfo(),
              SizedBox(height: 10),
              InkWell(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      "Đặt lại",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
