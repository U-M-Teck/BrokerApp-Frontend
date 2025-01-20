
import 'package:broker/app/core/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/app_color.dart';
import '../../style/app_text_styles.dart';


class OutlinedAppButton extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final VoidCallback? onPressed;
  final double? horizontalTitleGap;
  final double? width;

  const OutlinedAppButton({
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
                const WidgetStatePropertyAll(Colors.transparent),
            overlayColor: const WidgetStatePropertyAll(
                Colors.transparent),
            backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                side:  BorderSide(color: AppColors.grey,width: 2.w),
                borderRadius: BorderRadius.circular(8)))),
        child: leading == null
            ? Center(
                child: Text(
                  title ?? "",
                  style: AppTextStyle.font16black600,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  leading!,
                  horizontalTitleGap?.ws ?? 8.ws,
                  Text(
                    title ?? "",
                    style: AppTextStyle.font16black600,
                  ),
                ],
              ));
  }
}
