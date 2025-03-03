import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/empty_widgets/please_login_screen.dart';
import 'package:broker/app/modules/add_property/controllers/add_apartment_controller.dart';
import 'package:broker/app/modules/add_property/views/widgets/add_property_item.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../core/services/storage_service.dart';

class AddPropertyView extends GetView<AddApartmentController> {
  const AddPropertyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.addProperty),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child:StorageService.getData("token") == null &&
                    StorageService.getData("userId") == null
                ? PleaseLoginScreen(): Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16.h,
          children: [
            Text(
              AppStrings.properties,
              style: AppTextStyle.font18black600,
            ),
            AddPropertyItem(
              icon: Assets.assetsSvgApartment,
              title: AppStrings.apartment,
              onPressed: () {
                Get.toNamed(Routes.addApartment);
                controller.selectedAdType.value = 1;
              },
            ),
            AddPropertyItem(
              icon: Assets.assetsSvgVilla,
              title: AppStrings.villa,
              onPressed: () {
                Get.toNamed(Routes.addApartment);
                controller.selectedAdType.value = 2;
              },
            ),
            AddPropertyItem(
              icon: Assets.assetsSvgChalet,
              title: AppStrings.chalet,
              onPressed: () {
                Get.toNamed(Routes.addApartment);
                controller.selectedAdType.value = 3;
              },
            ),
            AddPropertyItem(
              icon: Assets.assetsSvgBuilding,
              title: AppStrings.building,
              onPressed: () {
                Get.toNamed(Routes.addApartment);
                controller.selectedAdType.value = 4;
              },
            ),
            AddPropertyItem(
              icon: Assets.assetsSvgOfficeBuilding,
              title: AppStrings.office,
              onPressed: () {
                Get.toNamed(Routes.addApartment);
                controller.selectedAdType.value = 5;
              },
            ),
            AddPropertyItem(
              icon: Assets.assetsSvgShop,
              title: AppStrings.shop,
              onPressed: () {
                Get.toNamed(Routes.addApartment);
                controller.selectedAdType.value = 6;
              },
            ),
            AddPropertyItem(
              icon: Assets.assetsSvgLand,
              title: AppStrings.land,
              onPressed: () {
                Get.toNamed(Routes.addApartment);
                controller.selectedAdType.value = 7;
              },
            ),
          ],
        ),
      ),
    );
  }
}
