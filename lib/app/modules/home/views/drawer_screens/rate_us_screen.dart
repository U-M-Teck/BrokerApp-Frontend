import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/buttons/button_2.dart';
import 'package:broker/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../generated/assets.dart';

class RateUsScreen extends GetView<HomeController> {
  const RateUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        spacing: 20.h,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppStrings.rateUs,
            style: AppTextStyle.font18black600,
          ),
          AppImageView(
            imagePath: Assets.assetsImagesRateUs,
            height: 150.h,
            width: 150.w,
          ),
          Obx(() => RatingBar.builder(
                initialRating: controller.rating.value,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0.w),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  controller.rating.value = rating;
                },
              )),
          AppButton1(
            onPressed: () {
              Get.back();
              controller.addRate(controller.rating.value);
            },
            title: AppStrings.submit,
          ),
          AppButton2(
            onPressed: () {
              Get.back();
            },
            title: AppStrings.close,
          ),
        ],
      ),
    );
  }
}
