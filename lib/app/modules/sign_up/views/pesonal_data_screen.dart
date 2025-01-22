import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_scaffold.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/form_fields/email_field.dart';
import 'package:broker/app/config/widgets/form_fields/password_field.dart';
import 'package:broker/app/config/widgets/form_fields/phone_number_field.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../config/style/app_color.dart';
import '../../../config/widgets/form_fields/name_field.dart';
import '../controllers/sign_up_controller.dart';

class PersonalDataScreen extends GetView<SignUpController> {
  const PersonalDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(AppStrings.personalData),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [Form(
          key: controller.personalDataKey,
          child: Column(
            spacing: 16.h,
            children: [
              NameField(controller: controller.nameController),
              PhoneNumberField(controller: controller.phoneController),
              PasswordField(controller: controller.passwordController),
              // Row(
              //   children: [
              //     Text('Whatsapp Available'),
              //     Switch(
              //       value: controller.isWhatsappAvailable.value,
              //       onChanged: (value) {
              //         controller.isWhatsappAvailable.value = value;
              //       },
              //     ),
              //   ],
              // ),
              // Obx(() {
              //   if (controller.isWhatsappAvailable.value) {
              //     return PhoneNumberField(
              //         controller: controller.whatsappController);
              //   }
              //   return Container();
              // }),
              // AppButton2(title: AppStrings.verify, onPressed: () {}),
              EmailField(controller: controller.emailController),
              20.hs,
              AppButton1(title: controller.isLoading.value
                    ? ""
                    : AppStrings.save,
                    leading: controller.isLoading.value? CircularProgressIndicator(color: AppColors.white,):null,
                onPressed: controller.isLoading.value ? null : controller.createAccount,
              ),
            ],
          ),
        )],
      ),
    );
  }
}
