import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnderReview extends StatelessWidget {
  final Widget button;
  final bool isLoading;
  const UnderReview({super.key, required this.button, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
      title: Text(
        AppStrings.underReview,
        style: AppTextStyle.font18black600,
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImageView(
            imagePath: Assets.assetsImagesSuccess,
            height: 150.h,
            width: 150.w,
          ),
          16.hs,
          Text(
            AppStrings.yourAdvIsUnderReview,
            textAlign: TextAlign.center,
            style: AppTextStyle.font16black400,
          ),
        ],
      ),
      actions: [button],
    );
  }
}
