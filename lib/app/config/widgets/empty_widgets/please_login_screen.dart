import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PleaseLoginScreen extends StatelessWidget {
  const PleaseLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 18.h,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppImageView(
            imagePath: Assets.assetsImagesEmptyAds,
            height: 350.h,
            width: 350.w,
          ),
          Text(
            AppStrings.pleaseSignIn,
            style: AppTextStyle.font18black400,
          ),
          AppButton1(
            title: AppStrings.signIn,
            onPressed: () => Get.offAllNamed(Routes.signIn),
          ),
        ],
      ),
    );
  }
}
