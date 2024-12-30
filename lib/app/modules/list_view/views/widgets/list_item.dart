import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withAlpha(25),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(5, 3),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 10.h),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Apartment for rent',
                style: AppTextStyle.font14black600,
              ),
              8.hs,
              Text(
                '200k EGP / month',
                style: AppTextStyle.font16secondary600,
              ),
              8.hs,
              Row(
                children: [
                  AppImageView(svgPath: Assets.assetsSvgDoor,height: 16.h,width: 16.w,color: AppColors.grey,),
                  Text(' 2',style: AppTextStyle.font14grey400,),
                  16.ws,
                  AppImageView(svgPath: Assets.assetsSvgBed,height: 16.h,width: 16.w,color: AppColors.grey,),
                  Text(' 2',style: AppTextStyle.font14grey400,),
                  16.ws,
                  AppImageView(svgPath: Assets.assetsSvgPath,height: 16.h,width: 16.w,color: AppColors.grey,),
                  Text(' 2m²',style: AppTextStyle.font14grey400,),
                ],
              ),
              8.hs,
              Text('12 Hamed Street, Shoubra, Cairo',style: AppTextStyle.font12black400,),
            ],
          ),
          16.ws,
         AppImageView(imagePath: Assets.assetsTempImage,height: 105.h)
        ],
      ),
    );
  }
}