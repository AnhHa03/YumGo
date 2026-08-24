import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/features/account/ui/account_screen.dart';
import 'package:yumgo/features/home/ui/home_screen.dart';
import 'package:yumgo/features/notifications/ui/notifications_screen.dart';
import 'package:yumgo/features/orders/ui/orders_screen.dart';
import 'package:yumgo/widgets/app_icon.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    OrdersScreen(),
    NotificationsScreen(),
    AccountScreen(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        height: 70.0,
        backgroundColor: AppColors.white,
        shadowColor: AppColors.black,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: AppIcon(
              icon: AppIcons.home_outline,
              size: 26.0,
              color: AppColors.grey,
            ),
            selectedIcon: AppIcon(
              icon: AppIcons.home,
              size: 26.0,
              color: AppColors.primaryDark,
            ),
            label: "Trang chủ",
          ),
          NavigationDestination(
            icon: AppIcon(
              icon: AppIcons.notepad_outline,
              size: 26.0,
              color: AppColors.grey,
            ),
            selectedIcon: AppIcon(
              icon: AppIcons.notepad,
              size: 26.0,
              color: AppColors.primaryDark,
            ),
            label: "Đơn hàng",
          ),
          NavigationDestination(
            icon: AppIcon(
              icon: AppIcons.notification_outline,
              size: 26.0,
              color: AppColors.grey,
            ),
            selectedIcon: AppIcon(
              icon: AppIcons.notification,
              size: 26.0,
              color: AppColors.primaryDark,
            ),
            label: "Thông báo",
          ),
          NavigationDestination(
            icon: AppIcon(
              icon: AppIcons.user_outline,
              size: 26.0,
              color: AppColors.grey,
            ),
            selectedIcon: AppIcon(
              icon: AppIcons.user,
              size: 26.0,
              color: AppColors.primaryDark,
            ),
            label: "Tài khoản",
          ),
        ],
        indicatorColor: Colors.transparent,
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
          if (states.contains(WidgetState.selected)) {
            return const TextStyle(
              color: AppColors.primaryDark,
              fontSize: 14.0,
            );
          }
          return const TextStyle(color: AppColors.grey, fontSize: 14.0);
        }),
      ),
    );
  }
}
