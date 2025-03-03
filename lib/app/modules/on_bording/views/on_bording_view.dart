import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/buttons/button_2.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/on_bording_controller.dart';

class OnBordingView extends GetView<OnBordingController> {
  const OnBordingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          spacing: 24.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImageView(imagePath: Assets.assetsImagesOnBoarding,width:350.w,height: 280.h,),
            
            Text(AppStrings.welcomeToBroker,style: AppTextStyle.font18black600,),
            
            AppButton1(title: AppStrings.signIn,onPressed: (){
              Get.toNamed(Routes.signIn);
            },),
            
            AppButton2(title: AppStrings.createAccount,onPressed: (){
              Get.toNamed(Routes.createAccount);
            },),
            
            AppButton1(title: AppStrings.goToMap,onPressed: (){
              Get.offAllNamed(Routes.home);
            },),

          ],
        ),
      ),
    );
  }
}
