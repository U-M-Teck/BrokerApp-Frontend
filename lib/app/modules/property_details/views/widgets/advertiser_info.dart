import 'package:broker/app/modules/layout/data/model/get_adv_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';
import '../../../../config/style/app_color.dart';
import '../../../../config/style/app_text_styles.dart';
import '../../../../config/widgets/app_image_view.dart';

class AdvertiserInfo extends StatelessWidget {
  final Details? details;
  const AdvertiserInfo({super.key,required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
      decoration: BoxDecoration(
        color: AppColors.primary.withAlpha(25),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        spacing: 12.w,
        children: [
          AppImageView(imagePath: Assets.assetsTempImage,shape: BoxShape.circle,height: 48.h,width: 48.w,),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8.h, children: [
            Text(
              details?.advertiseMakerName??"",
              style: AppTextStyle.font14black600,
            ),
            Text(
              details?.advertiseMaker??"",
              style: AppTextStyle.font14black400,
            ),
          ]),
        ],
      ),
    );
  }
}
