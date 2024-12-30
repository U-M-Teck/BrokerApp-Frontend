import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/style/app_color.dart';
import '../../../../config/style/app_text_styles.dart';
import '../../../../config/widgets/app_image_view.dart';

class BottomNavBarItem extends StatelessWidget {
  final bool isSelected;
  final String icon;
  final String title;

  const BottomNavBarItem({super.key, required this.isSelected, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue.withAlpha(25) : Colors.transparent,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0.h, top: 4.h),
            child: AppImageView(
              svgPath: icon,
              height: 24.h,
              width: 24.w,
              color: isSelected ? AppColors.primary : AppColors.grey,
            ),
          ),
          Text(
            title,
            style: isSelected ? AppTextStyle.font10primary600 : AppTextStyle.font10grey600,
          ),
        ],
      ),
    );
  }
}