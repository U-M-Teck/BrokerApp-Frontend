import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/modules/property_details/controllers/property_details_controller.dart';
import 'package:broker/app/modules/property_details/views/widgets/advertiser_info.dart';
import 'package:broker/app/modules/property_details/views/widgets/contact_with_adviser.dart';
import 'package:broker/app/modules/property_details/views/widgets/facilities_info.dart';
import 'package:broker/app/modules/property_details/views/widgets/property_description_info.dart';
import 'package:broker/app/modules/property_details/views/widgets/property_description.dart';
import 'package:broker/app/modules/property_details/views/widgets/property_details_info.dart';
import 'package:broker/app/modules/property_details/views/widgets/slider_images.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../config/style/app_color.dart';
import '../../../config/style/app_text_styles.dart';
import '../../../config/widgets/loading_widget.dart';
import '../../../core/services/storage_service.dart';
import '../../layout/controllers/layout_controller.dart';

class PropertyDetailsView extends GetView<PropertyDetailsController> {
  const PropertyDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    final layoutController = Get.find<LayoutController>();

    return Obx(() {
      return Stack(
        children: [
          Scaffold(
            bottomSheet: ContactWithAdviser(details: layoutController.advDetailsModel.value?.details,),
            appBar: AppBar(
              actions: [
                // IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
                StorageService.getData("token") == null &&
                        StorageService.getData("userId") == null
                    ? SizedBox()
                    : Obx(() {
                      final isFavourite =
                          layoutController
                              .advDetailsModel
                              .value
                              ?.details
                              ?.isFavourite ??
                          true;
                      return IconButton(
                        onPressed:
                            isFavourite
                                ? () {
                                  layoutController.deleteFavoriteByAdId(
                                    layoutController
                                            .advDetailsModel
                                            .value
                                            ?.details
                                            ?.id ??
                                        0,
                                  );
                                }
                                : () {
                                  layoutController.createFavorite(
                                    layoutController
                                            .advDetailsModel
                                            .value
                                            ?.details
                                            ?.id ??
                                        0,
                                  );
                                },
                        icon:
                            isFavourite
                                ? Icon(Icons.favorite, color: AppColors.primary)
                                : AppImageView(
                                  svgPath: Assets.assetsSvgFavorites,
                                ),
                      );
                    }),
              ],
              title: Text(AppStrings.propertyDetails),
            ),
            body: ListView(
              padding: EdgeInsets.only(
                right: 20.w,
                left: 20.w,
                top: 12.h,
                bottom: 120.h,
              ),
              children: [
                PropertyImages(layoutController.advDetailsModel.value?.details),
                16.hs,
                Row(
                  spacing: 8.w,
                  children: [
                    AppImageView(
                      svgPath: Assets.assetsSvgPropertyDetails,
                      height: 16.h,
                      width: 16.w,
                      color: AppColors.primary,
                    ),
                    Text(
                      AppStrings.propertyDetails,
                      style: AppTextStyle.font16black600,
                    ),
                  ],
                ),
                16.hs,
                PropertyDetailsInfo(
                  details: layoutController.advDetailsModel.value?.details,
                ),
                16.hs,
                Divider(color: AppColors.white3),
                16.hs,
                PropertyDescription(
                  details: layoutController.advDetailsModel.value?.details,
                ),
                16.hs,
                Divider(color: AppColors.white3),
                16.hs,
                PropertyDesctiptionInfo(
                  details: layoutController.advDetailsModel.value?.details,
                ),
                16.hs,
                Divider(color: AppColors.white3),
                16.hs,
                FacilitiesInfo(
                  details: layoutController.advDetailsModel.value?.details,
                ),
                16.hs,
                Divider(color: AppColors.white3),
                16.hs,
                PropertyDetailsInfoItem(
                  title: AppStrings.adNumber,
                  value:
                      "${layoutController.advDetailsModel.value?.details?.id ?? 0}",
                  icon: Assets.assetsSvgAdNumber,
                ),
                16.hs,
                Divider(color: AppColors.white3),
                16.hs,
                AdvertiserInfo(
                  details: layoutController.advDetailsModel.value?.details,
                ),
              ],
            ),
          ),
          layoutController.getAdsDetailsLodaing.value == true
              ? const LoadingWidget()
              : const SizedBox(),
        ],
      );
    });
  }
}
