import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_scaffold.dart';
import 'package:broker/app/config/widgets/form_fields/email_field.dart';
import 'package:broker/app/config/widgets/form_fields/phone_number_field.dart';
import 'package:broker/app/modules/layout/controllers/layout_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/widgets/form_fields/name_field.dart';


class PersonalInformationScreen extends GetView<LayoutController> {
  const PersonalInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put<LayoutController>(LayoutController());
    return AppScaffold(
      appBar: AppBar(
        title: Text(AppStrings.personalData),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [Column(
          spacing: 16.h,
          children: [
            NameField(controller: controller.nameController,isReadOnly: true,),
            PhoneNumberField(controller: controller.phoneController,isReadOnly: true,),
            // Row(
            //   children: [
            //     Text(AppStrings.whatsappAvailable),
            //     Spacer(),
            //     Switch(
            //       value: controller.isWhatsappAvailable.value,
            //       onChanged: (value) {
            //       },
            //     ),
            //   ],
            // ),
            // Obx(() {
            //   if (controller.isWhatsappAvailable.value) {
            //     return PhoneNumberField(
            //       isReadOnly: true,
            //         controller: controller.whatsappController);
            //   }
            //   return Container();
            // }),
            EmailField(controller: controller.userEmailController,isReadOnly: true,),
        
          ],
        )],
      ),
    );
  }
}
