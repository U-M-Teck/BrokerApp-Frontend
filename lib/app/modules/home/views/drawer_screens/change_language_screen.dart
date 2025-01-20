import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/buttons/button_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../generated/assets.dart';
import '../../../../core/heplers/localization_helper.dart';
import '../../../../core/services/storage_service.dart';

class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({super.key});

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
            AppStrings.changeLanguage,
            style: AppTextStyle.font18black600,
          ),
          AppImageView(
            imagePath: Assets.assetsImagesChangeLanguage,
            height: 150.h,
            width: 150.w,
          ),
          AppButton1(
            onPressed: () async {
              await StorageService.setData('selected_language', 'en');
              LocalizationHelper().changeLocale(Language.english);
              Get.back();
            },
            title: AppStrings.english,
          ),
          AppButton2(
            onPressed: () async {
              await StorageService.setData('selected_language', 'ar');
              LocalizationHelper().changeLocale(Language.arabic);
              Get.back();
            },
            title: AppStrings.arabic,
          ),
        ],
      ),
    );
  }
}
