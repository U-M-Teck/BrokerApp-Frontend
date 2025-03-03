import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/core/services/storage_service.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../generated/assets.dart';
import '../../../../../config/utils/app_utils/app_strings.dart';
import '../../../../../config/widgets/app_image_view.dart';
import '../../../../../config/widgets/buttons/button_1.dart';
import '../../../controllers/add_apartment_controller.dart';

class AddApartmentStage6 extends GetView<AddApartmentController> {

  const AddApartmentStage6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(controller.selectedAdType.value == 1
            ? AppStrings.addApartment
            : controller.selectedAdType.value == 2
                ? AppStrings.addVilla
                : controller.selectedAdType.value == 3
                    ? AppStrings.addChalet
                    : controller.selectedAdType.value == 4
                        ? AppStrings.addBuilding
                        : controller.selectedAdType.value == 5
                            ? AppStrings.addOffice
                            : controller.selectedAdType.value == 6
                                ? AppStrings.addShop
                                : AppStrings.addLand,)),
      body: Form(
        key: controller.sixthStageFormKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          children: [
            Text(AppStrings.contactInformation, style: AppTextStyle.font18black600),
            32.hs,
            TextFormField(
              
              readOnly: true,
              initialValue: StorageService.getData("phoneNumber") ?? "رقم الهاتف غير متوفر",
              decoration: InputDecoration(
                  icon: AppImageView(
                    svgPath: Assets.assetsSvgCalling,
                    height: 24.h,
                    width: 24.w,
                  ),
                  labelText: AppStrings.phoneNumber),
            ),
            32.hs,
            Obx(() {
              return Row(
                spacing: 8.w,
                children: [
                  AppImageView(
                    svgPath: Assets.assetsSvgWhatsApp,
                    height: 24.h,
                    width: 24.w,
                    color: AppColors.grey,
                  ),
                  Text(
                    AppStrings.whatsappAvailable,
                    style: AppTextStyle.font14black400,
                  ),
                  Spacer(),
                  Transform.scale(
                    scale: 0.8,
                    child: Switch(
                      value: controller.isWhatsAppAvailable.value,
                      onChanged: (value) {
                        controller.isWhatsAppAvailable.value = value;
                      },
                    ),
                  ),
                ],
              );
            }),
            32.hs,
            Obx(() => controller.isWhatsAppAvailable.value
                ? TextFormField(
                  keyboardType: TextInputType.number,
                  controller: controller.whatsappController,
                    decoration: InputDecoration(
                      icon: AppImageView(
                        svgPath: Assets.assetsSvgMobile,
                        height: 24.h,
                        width: 24.w,
                      ),
                      labelText: AppStrings.whatsappNumber,
                    ),
                  )
                : SizedBox()),
            32.hs,
            // AppButton1(
            //   title: AppStrings.verifyMobileNumber,
            // ),
            // 32.hs,
            AppButton1(
              onPressed: () {
                controller.checkSixthStageForm();
              },
              title: AppStrings.publish,
            ),
            
          ],
        ),
      ),
    );
  }
}
