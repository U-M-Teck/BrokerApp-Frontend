import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/buttons/gps_button.dart';
import 'package:broker/app/modules/add_property/controllers/add_apartment_controller.dart';
import 'package:broker/app/modules/add_property/views/widgets/drop_down_widget.dart';
import 'package:broker/app/modules/add_property/views/widgets/selection_widget.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../../config/widgets/buttons/outlined_app_button.dart';

class AddApartment extends StatelessWidget {
  AddApartment({super.key});
  final AddApartmentController controller =
      Get.put<AddApartmentController>(AddApartmentController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.addApartment),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        children: [
          Text(
            AppStrings.basicDetails,
            style: AppTextStyle.font16black400,
          ),
          SelectionWidget(
              controller: controller.selectedContractType,
              listLenght: 2,
              labels: [AppStrings.forSell, AppStrings.forRent],
              title: "",
              icon: ""),
          32.hs,
          TextFormField(
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
          DropDownWidget(items: ["City 1", "City 2", "City 3"], controller: controller.selectedCity, label: AppStrings.city),
          20.hs,
          TextFormField(
            decoration: InputDecoration(labelText: AppStrings.street),
          ),
          20.hs,
          TextFormField(
            decoration: InputDecoration(labelText: AppStrings.district),
          ),
          20.hs,
          TextFormField(
            decoration: InputDecoration(labelText: AppStrings.buildingNo),
          ),
          20.hs,
          Row(
            children: [
              GpsButton(),
              16.ws,
              Text(
                'Please use the GPS for Accurate location',
                style: AppTextStyle.font12grey400,
              ),
            ],
          ),
          20.hs,
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
                  Get.toNamed(Routes.addApartmentStage2);
                },
              ))
            ],
          ),
        ],
      ),
    );
  }
}
