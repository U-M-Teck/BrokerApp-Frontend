import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/buttons/outlined_app_button.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/config/widgets/pop_ups/delete_ad.dart';
import 'package:broker/app/config/widgets/pop_ups/statistics_widget.dart';
import 'package:broker/app/core/heplers/date_format_helper.dart';
import 'package:broker/app/modules/edit_property/controllers/edit_apartment_controller.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../../../layout/controllers/layout_controller.dart';
import '../../../layout/data/model/get_all_ads_for_user_model.dart';

class AddsItem extends StatelessWidget {
  final Advertisements? advertisements;

  const AddsItem({super.key, this.advertisements});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.propertyDetails);
        Get.find<LayoutController>().createViewForAdvertisement(
          advertisements?.id ?? 0,
        );
        Get.find<LayoutController>().getAdvDetails(advertisements?.id ?? 0);
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
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.white3, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                advertisements?.title ?? '',
                style: AppTextStyle.font18black400,
              ),
            ),
            12.hs,
            Align(
              alignment: Alignment.center,
              child: AppImageView(
                        fit: BoxFit.fill,
              
                url: advertisements?.photos?[0] ?? "",
                  width: 250.w,
                height: 130.h,
                radius: BorderRadius.circular(12),
              ),
            ),
            12.hs,
            Text(
              'Ad No: ${advertisements?.id ?? ''}',
              style: AppTextStyle.font16black400,
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
                    FutureBuilder<String>(
                      future: Get.find<LayoutController>().getAddressFromLatLng(advertisements?.latitude, advertisements?.longitude),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Text("جاري التحميل...", style: AppTextStyle.font12black400);
                        } else if (snapshot.hasError) {
                          return Text("خطأ في التحميل", style: AppTextStyle.font12black400);
                        } else {
                          return Text(
                            snapshot.data ?? "موقع غير متوفر",
                            style: AppTextStyle.font12black400,
                          );
                        }
                      },
                    ),
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
                    Text(
                      advertisements?.viewCount.toString() ?? '',
                      style: AppTextStyle.font14grey400,
                    ),
                  ],
                ),
                Row(
                  children: [
                    AppImageView(
                      svgPath:
                          advertisements?.isApproved == true &&
                                  advertisements?.isPublish == true
                              ? Assets.assetsSvgActive
                              : Assets.assetsSvgInactive,
                      height: 24.h,
                      width: 24.w,
                      color:
                          advertisements?.isApproved == true &&
                                  advertisements?.isPublish == true
                              ? AppColors.green
                              : advertisements?.isApproved == null &&
                                  advertisements?.isPublish == true
                              ? AppColors.black
                              : AppColors.red,
                    ),
                    4.ws,
                    Text(
                      advertisements?.isApproved == true &&
                              advertisements?.isPublish == true
                          ? AppStrings.active
                          : advertisements?.isApproved == null &&
                              advertisements?.isPublish == true
                          ? AppStrings.pending
                          : AppStrings.inactive,
                      style:
                          advertisements?.isApproved == true &&
                                  advertisements?.isPublish == true
                              ? AppTextStyle.font14green400
                              : advertisements?.isApproved == null &&
                                  advertisements?.isPublish == true
                              ? AppTextStyle.font14black400
                              : AppTextStyle.font14red400,
                    ),
                  ],
                ),
              ],
            ),
            12.hs,
            advertisements?.isApproved == true &&
                    advertisements?.isPublish == true
                ? Text(
                  'Duration: ${DateFormatHelper.formatDateTime(advertisements?.from ?? '')} - ${DateFormatHelper.formatDateTime(advertisements?.to ?? '')}',
                  style: AppTextStyle.font14black400,
                )
                : SizedBox.shrink(),
            12.hs,
            advertisements?.isApproved == null &&
                    advertisements?.isPublish == true
                ? SizedBox.shrink()
                :advertisements?.isPublish==true? AppButton1(
                  onPressed: () {
                    Get.find<LayoutController>().changeActiveStatus(
                      advertisements?.id ?? 0,
                    );
                  },
                  leading: AppImageView(
                    svgPath: Assets.assetsSvgPlay,
                    height: 24.h,
                    width: 24.w,
                  ),
                ):OutlinedAppButton(
                  onPressed: () {
                    Get.find<LayoutController>().changeActiveStatus(
                      advertisements?.id ?? 0,
                    );
                  },
                  leading: AppImageView(
                    svgPath: Assets.assetsSvgPause,
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
                        AppColors.primary,
                      ),
                    ),
                    onPressed: () {
                      Get.put(EditApartmentController());
                      Get.find<EditApartmentController>()
                          .getAdvDetailsForEdit(advertisements?.id ?? 0);
                            Get.toNamed(Routes.editApartment);
                    },
                    child: AppImageView(
                      svgPath: Assets.assetsSvgEdit,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                ),
                16.ws,
                advertisements?.isApproved == null &&
                        advertisements?.isPublish == true
                    ? SizedBox.shrink()
                    : Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            AppColors.primary,
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => StatisticsWidget(),
                          );
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
                        AppColors.primary,
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder:
                            (context) => DeleteAd(adId: advertisements?.id),
                      );
                    },
                    child: AppImageView(
                      svgPath: Assets.assetsSvgDelete,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
