import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/core/theme/constants/app_images.dart';
import 'package:yumgo/features/orders/models/order_status.dart';
import 'package:yumgo/features/orders/models/order_status_info.dart';
import 'package:yumgo/widgets/app_icon.dart';

class DeliveryTracking extends StatelessWidget {
  final OrderStatus status;
  DeliveryTracking({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final info = orderStatusInfo[status]!;
    final currentIndex = OrderStatus.values.indexOf(status);
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      info.title,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      info.subtitle,
                      maxLines: 2,
                      style: TextStyle(color: AppColors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
              Image.asset(info.image, height: 90.0, width: 90.0),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              _trackingIcon(
                icon: AppIcons.task_check,
                stepIndex: 0,
                currentIndex: currentIndex,
              ),
              _connector(stepIndex: 1, currentIndex: currentIndex),
              _trackingIcon(
                icon: AppIcons.food_cloche,
                stepIndex: 1,
                currentIndex: currentIndex,
              ),
              _connector(stepIndex: 2, currentIndex: currentIndex),
              _trackingIcon(
                icon: AppIcons.delivery_bike,
                stepIndex: 2,
                currentIndex: currentIndex,
              ),
              _connector(stepIndex: 3, currentIndex: currentIndex),
              _trackingIcon(
                icon: AppIcons.food_delivery,
                stepIndex: 3,
                currentIndex: currentIndex,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _trackingIcon({
  required String icon,
  required int stepIndex,
  required int currentIndex,
}) {
  final isCompleted = stepIndex < currentIndex;
  final isActive = stepIndex == currentIndex;
  final isActiveColor = isCompleted || isActive;

  return AnimatedContainer(
    margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
    duration: const Duration(milliseconds: 300),
    width: isActive ? 44.0 : 30,
    height: isActive ? 44.0 : 38,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isActive ? AppColors.greenLight60 : Colors.transparent,
    ),
    child: Center(
      child: AppIcon(
        icon: icon,
        size: isActive ? 30.0 : 24,
        color: isActiveColor ? AppColors.primary : AppColors.greyLight60,
      ),
    ),
  );
}

Widget _connector({required int stepIndex, required int currentIndex}) {
  final isCompleted = stepIndex <= currentIndex;
  return Expanded(
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6.0,
      decoration: BoxDecoration(
        color: isCompleted ? AppColors.primary : AppColors.greyLight60,
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
}
