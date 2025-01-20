import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/form_fields/verify_code_field.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_scaffold.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/change_password_controller.dart';

class VerifyForgetPasswordCodeScreen extends GetView<ChangePasswordController> {
  const VerifyForgetPasswordCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appBar: AppBar(
          title: Text(AppStrings.verify),
          centerTitle: true,
        ),
        body: Form(
          key: controller.verifyFormKey,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0.w,
              vertical: 24.h,
            ),
            children: [
              VerifyCodeField(controller: controller.codeController),
              24.hs,
              AppButton1(
                title: AppStrings.verify,
                onPressed: controller.verifyCode,
              )
            ],
          ),
        ));
  }
}
