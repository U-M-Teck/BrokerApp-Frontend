import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/loading_widget.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/buttons/gps_button.dart';
import 'package:broker/app/core/heplers/validation_form.dart';
import 'package:broker/app/modules/edit_property/controllers/edit_apartment_controller.dart';
import 'package:broker/app/modules/edit_property/views/widgets/selection_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../../config/widgets/buttons/outlined_app_button.dart';
import '../../widgets/drop_down_widget.dart';

class EditApartmentStage1 extends GetView<EditApartmentController> {
  const EditApartmentStage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
       () {
        return Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                leading: IconButton(
                    onPressed: () {
                      Get.back();
                      controller.clearData();
                    },
                    icon: Icon(Icons.arrow_back)),
                title: Text(
                  controller.selectedAdType.value == 1
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
                                          : AppStrings.addLand,
                ),
              ),
              body: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: controller.firstStageFormKey,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                  children: [
                    Text(
                      AppStrings.basicDetails,
                      style: AppTextStyle.font16black400,
                    ),
                    EditSelectionWidget(
                        initialValue:
                            controller.advDetailsModel.value?.agreementStatus ?? 0,
                        onChanged: (value) {},
                        controller: controller.selectedContractType,
                        listLenght: 2,
                        labels: [AppStrings.forSell, AppStrings.forRent],
                        title: "",
                        icon: ""),
                    32.hs,
                    TextFormField(
                      validator: ValidationForm.validateTitle,
                      controller: controller.titleController,
                      decoration: InputDecoration(
                        labelText: 'Ad Title',
                      ),
                    ),
                    8.hs,
                    Text(
                      AppStrings.writeTitle,
                      style: AppTextStyle.font12grey400,
                    ),
                    20.hs,
                    EditDropDownWidget(
                      items: {
                        for (var gov
                            in controller.allGovernates.value?.governorates ?? [])
                          if (gov.name != null) gov.name!: gov.id // Map name to ID
                      },
                      controller: controller.selectedGovernate,
                      selectedIdController: controller.selectedGovernateId, // Store ID
                      label: AppStrings.governate,
                      initialId: controller.selectedGovernateId.value ?? 2,
                    ),
                    20.hs,
                    TextFormField(
                      validator: ValidationForm.validateStreet,
                      decoration: InputDecoration(labelText: AppStrings.street),
                      controller: controller.streetController,
                    ),
                    20.hs,
                    TextFormField(
                      validator: ValidationForm.validateDistrict,
                      decoration: InputDecoration(labelText: AppStrings.district),
                      controller: controller.districtController,
                    ),
                    20.hs,
                    TextFormField(
                      validator: ValidationForm.validateBuildingNo,
                      decoration: InputDecoration(labelText: AppStrings.buildingNo),
                      controller: controller.buildingNoController,
                    ),
                    20.hs,
                    Obx(() {
                      return Row(
                        children: [
                          GpsButton(
                            onPressed: () {
                              controller.showLocationPicker(context);
                            },
                          ),
                          16.ws,
                          controller.currentLocation.value == null
                              ? Text(
                                  'Please use the GPS for Accurate location',
                                  style: AppTextStyle.font12grey400,
                                )
                              : Obx(
                                 () {
                                  return Expanded(
                                      child: Text(
                                      controller.selectedAddress.value,
                                      style: AppTextStyle.font12grey400
                                          .copyWith(height: 1.3.h),
                                    ));
                                }
                              )
                        ],
                      );
                    }),
                    20.hs,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: OutlinedAppButton(
                          title: AppStrings.back,
                          onPressed: () {
                            controller.clearData();
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
                            controller.checkFirstStageForm();
                          },
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            controller.getAdsDetailsLodaing.value==true?LoadingWidget():SizedBox.shrink()
          ],
        );
      }
    );
  }
}
