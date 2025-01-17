import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/utils/extentions/extention.dart';
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

class PropertyDetailsView extends GetView<PropertyDetailsController> {
 
 const PropertyDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
            IconButton(
                onPressed: () {},
                icon: AppImageView(
                  svgPath: Assets.assetsSvgFavorites,
                ))
          ],
          title: Text(AppStrings.propertyDetails),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              children: [
                PropertyImages(),
                16.hs,
                Row(spacing: 8.w, children: [
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
                ]),
                16.hs,
                PropertyDetailsInfo(),
                16.hs,
                Divider(
                  color: AppColors.white3,
                ),
                16.hs,
                PropertyDescription(),
                16.hs,
                Divider(
                  color: AppColors.white3,
                ),
                16.hs,
                PropertyDesctiptionInfo(),
                16.hs,
                Divider(
                  color: AppColors.white3,
                ),
                16.hs,
                FacilitiesInfo(),
                16.hs,
                Divider(
                  color: AppColors.white3,
                ),
                16.hs,
                PropertyDetailsInfoItem(
                  title: AppStrings.adNumber,
                  value: "56656",
                  icon: Assets.assetsSvgAdNumber,
                ),
                16.hs,
                Divider(
                  color: AppColors.white3,
                ),
                16.hs,
                AdvertiserInfo(),
              ],
            ),
            ContactWithAdviser(),
          ],
        ));
  }
}
