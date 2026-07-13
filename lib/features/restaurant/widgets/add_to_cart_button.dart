import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/widgets/app_icon.dart';

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({super.key});

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    if (quantity == 0) {
      return InkWell(
        onTap: () {
          setState(() {
            quantity = 1;
          });
        },
        child: AppIcon(
          icon: AppIcons.add_rectangle,
          size: 30,
          color: AppColors.primaryDark,
        ),
      );
    }
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              quantity--;
            });
          },
          child: AppIcon(
            icon: AppIcons.clear_rectangle,
            size: 30,
            color: AppColors.primaryDark,
          ),
        ),
        SizedBox(width: 10.0),
        Text(
          quantity.toString(),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(width: 10.0),
        InkWell(
          onTap: () {
            setState(() {
              quantity++;
            });
          },
          child: AppIcon(
            icon: AppIcons.add_rectangle,
            size: 30,
            color: AppColors.primaryDark,
          ),
        ),
      ],
    );
  }
}
