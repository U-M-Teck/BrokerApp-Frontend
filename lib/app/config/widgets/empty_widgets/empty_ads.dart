import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyAds extends StatelessWidget {
  const EmptyAds({super.key});

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
          Text(AppStrings.youHaveNotPostedAnyAds,style: AppTextStyle.font18black400,)
        ],
      ),
    );
  }
}