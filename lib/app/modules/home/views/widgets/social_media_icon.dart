import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaIcon extends StatelessWidget {
  final String icon;
  const SocialMediaIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
      decoration: BoxDecoration(color: AppColors.primary,borderRadius: BorderRadius.circular(8)),
      child: AppImageView(svgPath: icon,height: 24.h,width: 24.w,color: AppColors.white,),
    );
  }
}