import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/config/widgets/buttons/sign_up_button.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/create_account_controller.dart';

class CreateAccountView extends GetView<CreateAccountController> {
  const CreateAccountView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.createAccount),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w,vertical:24.h,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text("I'm .....",style: AppTextStyle.font16black600,)),
            24.hs,
            AppImageView(imagePath: Assets.assetsImagesSignUp,width: 250.w,height: 240.h,),
            24.hs,
          SignUpButton(icon: Assets.assetsSvgSearch,title: "Property Seeker",onPressed: (){
            Get.toNamed(Routes.SIGN_UP);
          },),
          24.hs,
          SignUpButton(icon: Assets.assetsSvgUser,title: "Property Owner",),
          24.hs,
          SignUpButton(icon: Assets.assetsSvgBroker,title: "Broker",),
          ],
        ),
      ),
    );
  }
}
