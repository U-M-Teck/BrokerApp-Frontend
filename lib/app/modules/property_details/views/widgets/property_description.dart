import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';
import '../../../../config/style/app_color.dart';
import '../../../../config/style/app_text_styles.dart';
import '../../../../config/widgets/app_image_view.dart';

class PropertyDescription extends StatelessWidget {
  const PropertyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 8.h, children: [
      Row(spacing: 8.w, children: [
        AppImageView(
          svgPath: Assets.assetsSvgDescribtion,
          height: 16.h,
          width: 16.w,
          color: AppColors.primary,
        ),
        Text(
          AppStrings.propertyDescription,
          style: AppTextStyle.font16black600,
        ),
      ]),
      Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
        style: AppTextStyle.font14black400.copyWith(height: 1.3.h),
      )
    ]);
  }
}
