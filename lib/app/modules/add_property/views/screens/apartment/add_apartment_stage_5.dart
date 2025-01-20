import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/core/extentions/extention.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../generated/assets.dart';
import '../../../../../config/utils/app_utils/app_strings.dart';
import '../../../../../config/widgets/app_image_view.dart';
import '../../../../../config/widgets/buttons/button_1.dart';
import '../../../../../config/widgets/buttons/button_2.dart';
import '../../../../../routes/app_pages.dart';
import '../../../controllers/add_apartment_controller.dart';

class AddApartmentStage5 extends StatelessWidget {
  final AddApartmentController controller = Get.put(AddApartmentController());

  AddApartmentStage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.addApartment)),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        children: [
          Text(AppStrings.contactInformation, style: AppTextStyle.font18black600),
          32.hs,
          TextFormField(
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
          AppButton1(
            title: AppStrings.verifyMobileNumber,
          ),
          32.hs,
          AppButton1(
            onPressed: () {
              Get.offAllNamed(Routes.HOME);
            },
            title: AppStrings.publish,
          ),
          32.hs,
          AppButton2(
            onPressed: () {
              Get.offAllNamed(Routes.HOME);
            },
            title: AppStrings.saveToMyAds,
          ),
        ],
      ),
    );
  }
}
