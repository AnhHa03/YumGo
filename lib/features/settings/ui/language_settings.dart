import 'package:flutter/material.dart';
import 'package:yumgo/core/theme/app_colors.dart';
import 'package:yumgo/core/theme/constants/app_icons.dart';
import 'package:yumgo/widgets/app_button.dart';
import 'package:yumgo/widgets/app_icon.dart';

class LanguageSettings extends StatefulWidget {
  const LanguageSettings({super.key});

  @override
  State<LanguageSettings> createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  late bool isEn = false;
  late bool isEnSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      appBar: AppBar(title: Text("Ngôn ngữ")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.fromLTRB(14, 10, 10, 10),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                language_item(
                  () => setState(() {
                    isEnSelected = true;
                  }),
                  "Tiếng Anh",
                  "Tiếng Anh",
                  isEnSelected,
                ),
                Divider(thickness: 0.2, color: AppColors.greyLight),
                language_item(
                  () => setState(() {
                    isEnSelected = false;
                  }),
                  "Tiếng Việt",
                  "Tiếng Việt",
                  !isEnSelected,
                ),
              ],
            ),
          ),
          AppButton(
            height: 50,
            width: MediaQuery.of(context).size.width,
            title: "Lưu",
            isEnable: (isEn == isEnSelected) ? false : true,
          ),
        ],
      ),
    );
  }

  GestureDetector language_item(
    VoidCallback onTap,
    String current_locale,
    String default_cocale,
    bool isSelected,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 6, bottom: 6),
        child: Row(
          children: [
            Text(
              current_locale,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              " - ${default_cocale}",
              style: TextStyle(
                color: AppColors.greyDark,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            if (isSelected)
              AppIcon(icon: AppIcons.tick, size: 26, color: AppColors.primary),
          ],
        ),
      ),
    );
  }
}
