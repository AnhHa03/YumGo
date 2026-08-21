import 'package:yumgo/core/theme/constants/app_images.dart';
import 'package:yumgo/features/orders/models/order_status.dart';

class OrderStatusInfo {
  final String title;
  final String subtitle;
  final String image;

  OrderStatusInfo({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

final Map<OrderStatus, OrderStatusInfo> orderStatusInfo = {
  OrderStatus.confirmed: OrderStatusInfo(
    title: "Đã nhận đơn",
    subtitle: "Quán đã nhận được đơn hàng của bạn.",
    image: AppImages.delivery_man,
  ),
  OrderStatus.preparing: OrderStatusInfo(
    title: "Quán đang chuẩn bị món",
    subtitle: "Món ăn đang được chuẩn bị.",
    image: AppImages.delivery_man,
  ),
  OrderStatus.delivering: OrderStatusInfo(
    title: 'Tài xế đang giao',
    subtitle: 'Tài xế đang trên đường giao đơn cho bạn.',
    image: AppImages.delivery_man,
  ),

  OrderStatus.delivered: OrderStatusInfo(
    title: 'Hoàn thành',
    subtitle: 'Đơn hàng đã được giao thành công.',
    image: AppImages.delivery_man,
  ),
};
