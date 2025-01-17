
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/app_color.dart';


class GpsButton extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final VoidCallback? onPressed;
  final double? horizontalTitleGap;
  final double? width;

  const GpsButton({
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
                WidgetStatePropertyAll(Size(48.w, 48.h)),
            shadowColor: const WidgetStatePropertyAll(Colors.transparent),
            surfaceTintColor:
                const WidgetStatePropertyAll(AppColors.primary),
            overlayColor: const WidgetStatePropertyAll(
                AppColors.primary),
            backgroundColor: const WidgetStatePropertyAll(AppColors.primary),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)))),
        child: Center(
                child: AppImageView(svgPath: Assets.assetsSvgGps,height: 24.h,width: 24.w,color: AppColors.white,)
            ));
  }
}
