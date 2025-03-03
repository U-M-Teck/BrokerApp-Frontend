import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPropertyItem extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback? onPressed;
  const AddPropertyItem(
      {super.key,
      required this.icon,
      required this.title,
      this.onPressed,
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.primary.withAlpha(25)),
        child: Row(
          children: [
            AppImageView(
              svgPath: icon,
              height: 32.h,
              width: 32.w,
            ),
            24.ws,
            Text(
              title,
              style: AppTextStyle.font18primary600,
            )
          ],
        ),
      ),
    );
  }
}
