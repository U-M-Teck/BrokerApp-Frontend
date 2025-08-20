import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/form_fields/email_field.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_scaffold.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../config/style/app_color.dart' show AppColors;
import '../controllers/change_password_controller.dart';

class ForgetPasswordView extends GetView<ChangePasswordController> {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appBar: AppBar(
          title: Text(AppStrings.forgetPassword),
          centerTitle: true,
        ),
        body: Form(
          key: controller.formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0.w,
              vertical: 24.h,
            ),
            children: [
              EmailField(controller: controller.emailController),
              24.hs,
              Obx(
                 () {
                  return AppButton1(
                    title:controller.isLoading.value ? "" : AppStrings.send,
                    leading: controller.isLoading.value
                        ? Center(
                            child: CircularProgressIndicator(
                            color: AppColors.white,
                          ))
                        : SizedBox.shrink(),
                    onPressed: controller.isLoading.value ? null : controller.forgetPassword,
                  );
                }
              )
            ],
          ),
        ));
  }
}
