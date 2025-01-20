
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/app_color.dart';
import '../../style/app_text_styles.dart';


class SignUpButton extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final VoidCallback? onPressed;
  final double? horizontalTitleGap;
  final double? width;
  final String icon;

  const SignUpButton({
    super.key,
    this.title,
    this.leading,
    this.onPressed,
    this.horizontalTitleGap, this.width, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
        onPressed: onPressed ?? () {},
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll(4),
          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h)),
            fixedSize:
                WidgetStatePropertyAll(Size(width??350.w, 105.h)),
            shadowColor: const WidgetStatePropertyAll(AppColors.desSelected),
            surfaceTintColor:
                const WidgetStatePropertyAll(AppColors.white2),
            overlayColor: const WidgetStatePropertyAll(
                AppColors.white2),
            backgroundColor: const WidgetStatePropertyAll(AppColors.white2),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)))),
        child: Column(
          children: [
            AppImageView(svgPath:icon ,height: 30.h,width: 30.w,),
            10.hs,
            Text(
              title ?? "",
              style: AppTextStyle.font16primary600,
            ),
          ],
        )
            );
  }
}
