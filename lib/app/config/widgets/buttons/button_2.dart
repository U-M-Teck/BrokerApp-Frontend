
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/app_color.dart';
import '../../style/app_text_styles.dart';


class AppButton2 extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final VoidCallback? onPressed;
  final double? horizontalTitleGap;
  final double? width;

  const AppButton2({
    super.key,
    this.title,
    this.leading,
    this.onPressed,
    this.horizontalTitleGap, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
        onPressed: onPressed ?? () {},
        style: ButtonStyle(
          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h)),
            fixedSize:
                WidgetStatePropertyAll(Size(width??343.w, 50.h)),
            shadowColor: const WidgetStatePropertyAll(Colors.transparent),
            surfaceTintColor:
                const WidgetStatePropertyAll(AppColors.secondary),
            overlayColor: const WidgetStatePropertyAll(
                AppColors.secondary),
            backgroundColor: const WidgetStatePropertyAll(AppColors.secondary),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)))),
        child: Center(
                child: Text(
                  title ?? "",
                  style: AppTextStyle.font16white600,
                ),
              )
            );
  }
}
