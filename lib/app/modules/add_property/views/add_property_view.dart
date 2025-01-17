import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/modules/add_property/views/widgets/add_property_item.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/add_property_controller.dart';

class AddPropertyView extends GetView<AddPropertyController> {
      const AddPropertyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.addProperty),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
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
              },
            ),
            AddPropertyItem(
                icon: Assets.assetsSvgVilla, title: AppStrings.villa),
            AddPropertyItem(
                icon: Assets.assetsSvgChalet, title: AppStrings.chalet),
            AddPropertyItem(
                icon: Assets.assetsSvgBuilding, title: AppStrings.building),
            AddPropertyItem(
                icon: Assets.assetsSvgOfficeBuilding, title: AppStrings.office),
            AddPropertyItem(icon: Assets.assetsSvgShop, title: AppStrings.shop),
            AddPropertyItem(icon: Assets.assetsSvgLand, title: AppStrings.land),
          ],
        ),
      ),
    );
  }
}
