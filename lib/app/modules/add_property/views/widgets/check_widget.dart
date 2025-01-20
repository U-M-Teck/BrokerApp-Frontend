import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CheckWidget extends StatelessWidget {
  final RxBool controller;
  final String icon;
  final String title;
  final bool hasSpacer;
  const CheckWidget({super.key, required this.controller, required this.icon, required this.title, this.hasSpacer=true});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
      spacing: 4.w,
            children: [
              AppImageView(svgPath: icon,height: 16.h,width: 16.w,color: AppColors.grey,),
              Text(title,style: AppTextStyle.font14grey400,),
              hasSpacer?Spacer():SizedBox(),
              Checkbox(
                value: controller.value,
                onChanged: (value) {
                  controller.value = value!;
                },
              ),
            ],
          ));
  }
}