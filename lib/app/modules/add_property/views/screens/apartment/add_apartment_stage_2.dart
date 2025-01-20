import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/modules/add_property/views/widgets/check_widget.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/utils/app_utils/app_strings.dart';
import '../../../../../config/widgets/buttons/button_1.dart';
import '../../../../../config/widgets/buttons/outlined_app_button.dart';
import '../../../../../routes/app_pages.dart';
import '../../../controllers/add_apartment_controller.dart';
import '../../widgets/selection_widget.dart';

class AddApartmentStage2 extends StatelessWidget {
  AddApartmentStage2({super.key});
  final AddApartmentController controller =
      Get.put<AddApartmentController>(AddApartmentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.addApartment)),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        children: [
          Text(
            AppStrings.propertyDetails,
            style: AppTextStyle.font16black400,
          ),
          24.hs,
          TextFormField(
            decoration: InputDecoration(
              icon: AppImageView(
                svgPath: Assets.assetsSvgArea,
                height: 16.h,
                width: 16.w,
                color: AppColors.grey,
              ),
              labelText: AppStrings.enterAreaString,
            ),
          ),
          32.hs,
          TextFormField(
            decoration: InputDecoration(
              icon: AppImageView(
                svgPath: Assets.assetsSvgLevel,
                height: 16.h,
                width: 16.w,
                color: AppColors.grey,
              ),
              labelText: AppStrings.levelString,
            ),
          ),
          32.hs,
          SelectionWidget(
              controller: controller.propertyStatus,
              listLenght: 3,
              labels: [
                AppStrings.newString,
                AppStrings.usedString,
                AppStrings.renewedString,
              ],
              title: AppStrings.propertyStatus,
              icon: Assets.assetsSvgPropertyStatus),
          32.hs,
          SelectionWidget(
              isExpanded: false,
              controller: controller.finishing,
              listLenght: 4,
              labels: [
                AppStrings.withoutString,
                AppStrings.semiFinishedString,
                AppStrings.fullString,
                AppStrings.highQualityString,
              ],
              title: AppStrings.finishing,
              icon: Assets.assetsSvgFinishing),
          32.hs,
          SelectionWidget(
              controller: controller.selectedRooms,
              listLenght: 5,
              labels: ["1", "2", "3", "4", "5+"],
              title: AppStrings.rooms,
              icon: Assets.assetsSvgDoor),
          32.hs,
          SelectionWidget(
              controller: controller.recieption,
              listLenght: 5,
              labels: ["1", "2", "3", "4", "5+"],
              title: AppStrings.reception,
              icon: Assets.assetsSvgBed),
          32.hs,
          SelectionWidget(
              controller: controller.dining,
              listLenght: 5,
              labels: ["1", "2", "3", "4", "5+"],
              title: AppStrings.dining,
              icon: Assets.assetsSvgDining),
          32.hs,
          SelectionWidget(
              controller: controller.balcony,
              listLenght: 5,
              labels: ["1", "2", "3", "4", "5+"],
              title: AppStrings.balcony,
              icon: Assets.assetsSvgBalcony),
          32.hs,
          SelectionWidget(
              controller: controller.kitchen,
              listLenght: 5,
              labels: ["1", "2", "3", "4", "5+"],
              title: AppStrings.kitchen,
              icon: Assets.assetsSvgKitchen),
          32.hs,
          SelectionWidget(
              controller: controller.toilet,
              listLenght: 5,
              labels: ["1", "2", "3", "4", "5+"],
              title: AppStrings.toilet,
              icon: Assets.assetsSvgPath),
          32.hs,
          Row(
            children: [
              Expanded(
                child: CheckWidget(
                    controller: controller.isFurnished,
                    icon: Assets.assetsSvgFurnished,
                    title: AppStrings.furnished),
              ),
              Expanded(
                child: CheckWidget(
                    controller: controller.hasElevator,
                    icon: Assets.assetsSvgElevator,
                    title: AppStrings.elevator),
              ),
            ],
          ),
          CheckWidget(
              hasSpacer: false,
              controller: controller.hasParking,
              icon: Assets.assetsSvgParking,
              title: AppStrings.parking),
          Row(
            children: [
              Expanded(
                child: CheckWidget(
                    hasSpacer: false,
                    controller: controller.hasGarden,
                    icon: Assets.assetsSvgGarden,
                    title: AppStrings.garden),
              ),
              8.ws,
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(labelText: AppStrings.areaString),
                ),
              ),
            ],
          ),
          32.hs,
          SelectionWidget(
              isExpanded: false,
              controller: controller.documents,
              listLenght: 4,
              labels: [
                AppStrings.registeredString,
                AppStrings.registrableString,
                AppStrings.unregisteredString,
                AppStrings.unregistrableString,
              ],
              title: AppStrings.documents,
              icon: Assets.assetsSvgDocument),
          32.hs,
          Row(
            children: [
              AppImageView(
                svgPath: Assets.assetsSvgFacilites,
                height: 16.h,
                width: 16.w,
              ),
              8.ws,
              Text(
                AppStrings.facilities,
                style: AppTextStyle.font16grey600,
              ),
            ],
          ),
          32.hs,
          Row(
            children: [
              Expanded(
                child: CheckWidget(
                    controller: controller.hasWater,
                    icon: Assets.assetsSvgWater,
                    title: AppStrings.water),
              ),
              Expanded(
                child: CheckWidget(
                    controller: controller.hasGas,
                    icon: Assets.assetsSvgGas,
                    title: AppStrings.gas),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CheckWidget(
                    controller: controller.hasElectricity,
                    icon: Assets.assetsSvgElectricity,
                    title: AppStrings.electricity),
              ),
              Expanded(
                child: CheckWidget(
                    controller: controller.hasPhone,
                    icon: Assets.assetsSvgPhone,
                    title: AppStrings.phone),
              ),
            ],
          ),
          CheckWidget(
              hasSpacer: false,
              controller: controller.hasInternet,
              icon: Assets.assetsSvgInternet,
              title: AppStrings.internet),
          32.hs,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: OutlinedAppButton(
                title: AppStrings.back,
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
              )),
              11.ws,
              Expanded(
                  child: AppButton1(
                title: AppStrings.next,
                onPressed: () {
                  Get.toNamed(Routes.addApartmentStage3);
                },
              ))
            ],
          ),
        ],
      ),
    );
  }
}
