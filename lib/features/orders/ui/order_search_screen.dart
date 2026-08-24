import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/features/orders/models/fake_food_list.dart';
import 'package:yumgo/features/orders/ui/order_detail_screen.dart';
import 'package:yumgo/features/orders/widgets/order_item.dart';
import 'package:yumgo/models/order.dart';
import 'package:yumgo/widgets/app_search_field.dart';

class OrderSearchScreen extends StatefulWidget {
  const OrderSearchScreen({super.key});

  @override
  State<OrderSearchScreen> createState() => _OrderSearchScreenState();
}

class _OrderSearchScreenState extends State<OrderSearchScreen> {
  late FocusNode _focusNode;
  late TextEditingController _searchController;
  late List<Order> _ordersSearch;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _searchController = TextEditingController();
    _ordersSearch = [];

    _searchController.addListener(_onSearchChanged);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _focusNode.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.trim().toLowerCase();

    if (query.isEmpty) {
      setState(() {
        _ordersSearch = [];
      });
      return;
    }

    final results = orders.where((order) {
      final matchOrderId = order.order_id.toLowerCase().contains(query);
      final matchOrderRestaurantName = order.name.toLowerCase().contains(query);
      //   final matchFood = order.foods.any(
      //   (food) => food.name.toLowerCase().contains(query),
      // );
      return matchOrderId || matchOrderRestaurantName;
      // || matchFood;
    }).toList();
    setState(() {
      _ordersSearch = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6.0),
          child: AppSearchField(
            hint: "Nhập mã đơn hàng, tên món ăn, tên quán ăn",
            controller: _searchController,
            focusNode: _focusNode,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: AppColors.backgroundGrey),
        child: ListView.builder(
          itemCount: _ordersSearch.length,
          itemBuilder: (context, index) {
            Order order = _ordersSearch[index];
            return OrderItem(
              order: order,
              onTap: (order) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => OrderDetailScreen()),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
