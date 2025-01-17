import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/config/widgets/pop_ups/delete_ad.dart';
import 'package:broker/app/config/widgets/pop_ups/statistics_widget.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddsItem extends StatelessWidget {
  const AddsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.white3,width: 1),
                borderRadius: BorderRadius.circular(8)),
            child: Text(
              'Ad Title',
              style: AppTextStyle.font18black600,
            ),
          ),
          12.hs,
          AppImageView(
            imagePath: Assets.assetsTempImage,
            width: double.infinity,
            height: 130.h,
            radius: BorderRadius.circular(12),
          ),
          12.hs,
          Text(
            'Ad No: 45498',
            style: AppTextStyle.font16black600,
          ),
          12.hs,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  AppImageView(
                    svgPath: Assets.assetsSvgLocation,
                    height: 24.h,
                    width: 24.w,
                    color: AppColors.grey,
                  ),
                  4.ws,
                  Text(AppStrings.location, style: AppTextStyle.font14grey400),
                ],
              ),
              Row(
                children: [
                  AppImageView(
                    svgPath: Assets.assetsSvgViews,
                    height: 24.h,
                    width: 24.w,
                    color: AppColors.grey,
                  ),
                  4.ws,
                  Text('22', style: AppTextStyle.font14grey400),
                ],
              ),
              Row(
                children: [
                  AppImageView(
                    svgPath: Assets.assetsSvgInactive,
                    height: 24.h,
                    width: 24.w,
                    color: AppColors.red,
                  ),
                  4.ws,
                  Text(
                    AppStrings.inactive,
                    style: AppTextStyle.font14red400,
                  ),
                ],
              ),
            ],
          ),
          12.hs,
          Text(
            'Duration: Feb 13, 2023 - Mar 15, 2022',
            style: AppTextStyle.font16black600,
          ),
          12.hs,
          ElevatedButton(
            style: ButtonStyle(
              padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h)),
              fixedSize: WidgetStatePropertyAll(Size(345.w, 50.h)),
            ),
            onPressed: () {},
            child: AppImageView(
              svgPath: Assets.assetsSvgPlay,
              height: 24.h,
              width: 24.w,
            ),
          ),
          12.hs,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          AppColors.primary.withAlpha(75))),
                  onPressed: () {},
                  child: AppImageView(
              svgPath: Assets.assetsSvgEdit,
              height: 24.h,
              width: 24.w,
            ),
                ),
              ),
              16.ws,
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          AppColors.primary.withAlpha(75))),
                  onPressed: () {
                    showDialog(context: context
                    , builder: (context) => StatisticsWidget());
                  },
                  child: AppImageView(
              svgPath: Assets.assetsSvgStatistics,
              height: 24.h,
              width: 24.w,
            ),
                ),
              ),
              16.ws,
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          AppColors.primary.withAlpha(75))),
                  onPressed: () {
                    showDialog(context: context
                    , builder: (context) => DeleteAd());
                  },
                  child: AppImageView(
              svgPath: Assets.assetsSvgDelete,
              height: 24.h,
              width: 24.w,
            ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
