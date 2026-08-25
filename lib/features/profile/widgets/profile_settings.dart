import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/features/settings/ui/settings_screen.dart';
import 'package:yumgo/features/profile/widgets/setting_item.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: BoxDecoration(
        color: AppColors.backgroundWhite,
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.fromLTRB(14, 10, 10, 10),
      child: Column(
        children: [
          SettingItem(
            icon: AppIcons.voucher_outline,
            title: "Ví voucher",
            onTapSetting: () {},
            icon_color: AppColors.orange,
            isEnable: false,
          ),
          SettingItem(
            icon: AppIcons.wallet_outline,
            title: "Thanh toán",
            onTapSetting: () {},
            icon_color: AppColors.blue,
            isEnable: false,
          ),
          SettingItem(
            icon: AppIcons.location_01_outline,
            title: "Địa chỉ",
            onTapSetting: () {},
            icon_color: AppColors.primaryDark,
            isEnable: true,
          ),
          SettingItem(
            icon: AppIcons.store_outline,
            title: "Cửa hàng của bạn",
            onTapSetting: () {},
            icon_color: AppColors.yellow,
            isEnable: false,
          ),
          SettingItem(
            icon: AppIcons.help_outline,
            title: "Trung tâm hỗ trợ",
            onTapSetting: () {},
            icon_color: AppColors.textSecondary,
            isEnable: false,
          ),
          SettingItem(
            icon: AppIcons.setting_outline,
            title: "Cài đặt",
            onTapSetting: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SettingsScreen()),
              );
            },
            icon_color: AppColors.purple,
            isEnable: true,
            isFinal: true,
          ),
        ],
      ),
    );
  }
}
