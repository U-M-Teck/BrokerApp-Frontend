import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/buttons/outlined_app_button.dart';
import 'package:broker/app/config/widgets/form_fields/description_field.dart';
import 'package:broker/app/modules/add_property/views/widgets/add_property_image.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/utils/app_utils/app_strings.dart';
import '../../../../../routes/app_pages.dart';
import '../../../controllers/add_apartment_controller.dart';

class AddApartmentStage3 extends StatelessWidget {
  final AddApartmentController controller = Get.put(AddApartmentController());
  AddApartmentStage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.addApartment)),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        children: [
          Text(AppStrings.propertyPhotos,
              style: AppTextStyle.font16black400),
          16.hs,
          Obx(() {
            return Wrap(
              runSpacing: 10.h,
              children: List.generate(
                controller.imageFiles.length < 3
                    ? 3
                    : controller.imageFiles.length,
                (index) => Padding(
                  padding:  EdgeInsets.only(right: 10.0.w),
                  child: AddPropertyImage(
                    index: index,
                    controller: controller,
                  ),
                ),
              ),
            );
          }),
          32.hs,
          Obx(
            () {
              // Example: Enable/disable button based on imageFiles length
              return OutlinedAppButton(
                onPressed: controller.imageFiles.length < 6
                    ? controller.addImages
                    : null, // Disable button when 3 or more images
                title:AppStrings.addMorePhotos,
              );
            },
          ),

          10.hs,
          Text(AppStrings.addClearImages,
              style: AppTextStyle.font12grey400),

          // وصف العقار
          20.hs,
          Row(
            children: [
              AppImageView(
                svgPath: Assets.assetsSvgDescribtion,
                height: 16.h,
                width: 16.w,
                color: AppColors.grey,
              ),
              8.ws,
              Text(AppStrings.propertyDescription, style: AppTextStyle.font16black600),
            ],
          ),
          16.hs,
          DescriptionField(controller: controller.descriptionController),
          20.hs,
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
                  Get.toNamed(Routes.addApartmentStage4);
                },
              ))
            ],
          ),
        ],
      ),
    );
  }
}
