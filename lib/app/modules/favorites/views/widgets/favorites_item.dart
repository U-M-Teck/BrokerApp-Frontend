import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/config/widgets/buttons/whats_app_button.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritesItem extends StatelessWidget {
  const FavoritesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        
      ),
      padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Apartment in Shubra',
                style: AppTextStyle.font16black600,
              ),
              Spacer(),
              AppImageView(
                svgPath: Assets.assetsSvgFavorites,
                color: AppColors.primary,
                height: 24.h,
                width: 24.w,
              )
            ],
          ),
          12.hs,
          AppImageView(
            imagePath: Assets.assetsTempImage,
            width: double.infinity,
            height: 130.h,
            radius: BorderRadius.circular(12),
          ),
          12.hs,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  children: [
                    AppImageView(
                      svgPath: Assets.assetsSvgLocation,
                      height: 24.h,
                      width: 24.w,
                      color: AppColors.grey,
                    ),
                    4.ws,
                    Text(AppStrings.location,
                        style: AppTextStyle.font14grey400),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    AppImageView(
                      svgPath: Assets.assetsSvgActive,
                      height: 24.h,
                      width: 24.w,
                      color: AppColors.success,
                    ),
                    4.ws,
                    Text(AppStrings.active, style: AppTextStyle.font14grey400),
                  ],
                ),
              ),
            ],
          ),
          12.hs,
          Text(
            '200k EGP / month',
            style: AppTextStyle.font18secondary600,
          ),
          12.hs,
          Row(
            children: [
              Expanded(
                child: WhatsAppButton(
                  onPressed: () {},
                ),
              ),
              16.ws,
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                      fixedSize:
                          WidgetStatePropertyAll(Size(double.infinity, 32.h)),
                      backgroundColor:
                          WidgetStatePropertyAll(AppColors.secondary)),
                  onPressed: () {},
                  child: Text(AppStrings.details),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
