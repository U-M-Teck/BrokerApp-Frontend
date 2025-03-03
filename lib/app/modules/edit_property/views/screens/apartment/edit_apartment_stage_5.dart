import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_scaffold.dart';
import 'package:broker/app/core/heplers/validation_form.dart';
import 'package:broker/app/modules/add_property/views/widgets/drop_down_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/utils/app_utils/app_strings.dart';
import '../../../../../config/widgets/buttons/button_1.dart';
import '../../../../../config/widgets/buttons/outlined_app_button.dart';
import '../../../../../core/services/storage_service.dart';
import '../../../controllers/edit_apartment_controller.dart';

class EditApartmentStage5 extends GetView<EditApartmentController> {
  const EditApartmentStage5({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: Text(controller.selectedAdType.value == 1
            ? AppStrings.addApartment
            : controller.selectedAdType.value == 2
                ? AppStrings.addVilla
                : controller.selectedAdType.value == 3
                    ? AppStrings.addChalet
                    : controller.selectedAdType.value == 4
                        ? AppStrings.addBuilding
                        : controller.selectedAdType.value == 5
                            ? AppStrings.addOffice
                            : controller.selectedAdType.value == 6
                                ? AppStrings.addShop
                                : AppStrings.addLand,)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        child: Form(
          key: controller.fifthStageFormKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 32.h,
              children: [
                Row(
                  spacing: 12.w,
                  children: [
                    Expanded(
                        child: DropDownWidget(
                      items: {"Mr": 1, "Mrs": 2},
                      label: AppStrings.mrMrs,
                      controller: controller.selectedMrMrs,
                    )),

                    Expanded(
                      child: TextFormField(
                        readOnly: true,
                        validator: ValidationForm.nameValidator,
                        initialValue: StorageService.getData("userName") ?? "test",
                      ),
                    ),

                  ],
                ),
                 DropDownWidget(
                      items: {"Owner": 1, "Broker": 2},
                      label: AppStrings.ownerBroker,
                      controller: controller.selectedBrokerOwner,
                    ),
                    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: OutlinedAppButton(
                  title: AppStrings.back,
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                )),
                11.ws,
                Expanded(
                    child: AppButton1(
                  title: AppStrings.next,
                  onPressed: () {
                    controller.checkFifthStageForm();
                  },
                ))
              ],
            ),
              ]),
              
        ),
      ),
    );
  }
}
