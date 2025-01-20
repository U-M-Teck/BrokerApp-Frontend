import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_scaffold.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/form_fields/confirm_password_field.dart';
import 'package:broker/app/config/widgets/form_fields/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appBar: AppBar(
          title:  Text(AppStrings.changePassword),
          centerTitle: true,
        ),
        body: Form(
          key: controller.changeFormKey,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0.w,
              vertical: 24.h,
            ),
            children: [
              Text(
                AppStrings.enterPassword,
                style: AppTextStyle.font16black600,
              ),
              24.hs,
              PasswordField(controller: controller.passwordController),
              24.hs,
              ConfirmPasswordField(
                  controller: controller.confirmPasswordController,
                  password: controller.passwordController),
              24.hs,
              AppButton1(
                title: AppStrings.save,
                onPressed: controller.changePassword,
              )
            ],
          ),
        ));
  }
}
