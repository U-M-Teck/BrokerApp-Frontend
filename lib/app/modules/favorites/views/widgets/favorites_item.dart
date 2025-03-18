import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/config/widgets/buttons/whats_app_button.dart';
import 'package:broker/app/modules/layout/data/model/get_user_favorites_response_model.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../../../layout/controllers/layout_controller.dart';

class FavoritesItem extends StatelessWidget {
  final Favorites? favorites;
  const FavoritesItem({super.key, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.propertyDetails);
        Get.find<LayoutController>()
            .getAdvDetails(favorites?.advertisementId ?? 0);
                    Get.find<LayoutController>()
            .createViewForAdvertisement(favorites?.advertisementId ?? 0);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(30), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 8, // Blur radius
              offset: Offset(0, 4), // Offset for the shadow
            ),
          ],
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
                Expanded(
                  child: Text(
                    favorites?.title ?? '',
                    style: AppTextStyle.font16black600.copyWith(height: 1.3.h),
                    textAlign: TextAlign.center,
                  ),
                ),
                InkWell(
                  onTap: () => Get.find<LayoutController>()
                      .deleteFavorite(favorites?.id ?? 0),
                  child: AppImageView(
                    svgPath: Assets.assetsSvgFavorites,
                    color: AppColors.primary,
                    height: 24.h,
                    width: 24.w,
                  ),
                )
              ],
            ),
            12.hs,
            Align(
              alignment: Alignment.center,
              child: AppImageView(
                      fit: BoxFit.fill,
              
                url: favorites?.photos?[0] ?? "",
                width: 250.w,
                height: 130.h,
                radius: BorderRadius.circular(12),
              ),
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
                      Text(favorites?.governorateName ?? '',
                          style: AppTextStyle.font14grey400),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      favorites?.isPublish == true
                          ? AppImageView(
                              svgPath: Assets.assetsSvgActive,
                              height: 24.h,
                              width: 24.w,
                              color: AppColors.success,
                            )
                          : AppImageView(
                              svgPath: Assets.assetsSvgInactive,
                              height: 24.h,
                              width: 24.w,
                              color: AppColors.red,
                            ),
                      4.ws,
                      Text(
                          favorites?.isPublish == true
                              ? AppStrings.active
                              : AppStrings.inactive,
                          style: AppTextStyle.font14grey400),
                    ],
                  ),
                ),
              ],
            ),
            12.hs,
            Text(
              favorites?.price ?? '',
              style: AppTextStyle.font18primary600,
            ),
            12.hs,
            Row(
              children: [
                favorites?.isWhatsApped == true
                    ? Expanded(
                        child: WhatsAppButton(
                          onPressed: () {
                            Get.find<LayoutController>().sendMessage("+20${favorites?.mobileNumber}");
                          },
                        ),
                      )
                    : SizedBox(),
                16.ws,
                Expanded(
                  child: AppButton1(
                    height: 32.h,
                    title: AppStrings.details,
                    onPressed: () {
                      Get.toNamed(Routes.propertyDetails);
                      Get.find<LayoutController>()
                          .getAdvDetails(favorites?.advertisementId ?? 0);
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
