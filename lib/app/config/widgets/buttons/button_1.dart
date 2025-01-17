
import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/app_color.dart';
import '../../style/app_text_styles.dart';


class AppButton1 extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final VoidCallback? onPressed;
  final double? horizontalTitleGap;
  final double? width;

  const AppButton1({
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
                const WidgetStatePropertyAll(AppColors.primary),
            overlayColor: const WidgetStatePropertyAll(
                AppColors.primary),
            backgroundColor: const WidgetStatePropertyAll(AppColors.primary),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)))),
        child: leading == null
            ? Center(
                child: Text(
                  title ?? "",
                  style: AppTextStyle.font16white600,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  leading!,
                  horizontalTitleGap?.ws ?? 8.ws,
                  Text(
                    title ?? "",
                    style: AppTextStyle.font16white600,
                  ),
                ],
              ));
  }
}
