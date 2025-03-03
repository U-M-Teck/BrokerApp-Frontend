import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_scaffold.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/form_fields/phone_number_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../config/style/app_color.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(AppStrings.signUp),
        centerTitle: true,
      ),
      body: Form(
        key: controller.signUpKey,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0.w,
            vertical: 24.h,
          ),
          child: Column(
            children: [
              PhoneNumberField(controller: controller.phoneController),
              24.hs,
              Obx(
                 () {
                  return AppButton1(
                    title: controller.isLoading.value
                        ? ""
                        : AppStrings.signUp,
                        leading: controller.isLoading.value? Center(child: CircularProgressIndicator(color: AppColors.white,)):null,
                    onPressed: controller.isLoading.value ? null : controller.sendOtp,
                  );
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
