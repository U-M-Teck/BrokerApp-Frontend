import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/buttons/whats_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';
import '../../../../config/style/app_color.dart';
import '../../../../config/widgets/app_image_view.dart';

class ContactWithAdviser extends StatelessWidget {
  const ContactWithAdviser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 25.h),
      child: Row(spacing: 8.w, children: [
        Expanded(
            child: WhatsAppButton(
          onPressed: () {},
          hight: 50.h,
        )),
        Expanded(
          child: AppButton1(
            leading: AppImageView(
              svgPath: Assets.assetsSvgCall,
              color: AppColors.white,
              height: 24.h,
              width: 24.w,
            ),
            title: AppStrings.call,
            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}
