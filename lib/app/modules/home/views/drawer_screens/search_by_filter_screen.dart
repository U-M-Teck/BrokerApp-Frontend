import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/buttons/button_2.dart';
import 'package:broker/app/config/widgets/buttons/gps_button.dart';
import 'package:broker/app/modules/add_property/views/widgets/check_widget.dart';
import 'package:broker/app/modules/add_property/views/widgets/drop_down_widget.dart';
import 'package:broker/app/modules/home/views/widgets/selection_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/utils/app_utils/app_strings.dart';
import '../../controllers/search_by_filter_controller.dart';

class SearchByFilterScreen extends StatelessWidget {
  final SearchByFilterController controller =
      Get.put(SearchByFilterController());

  SearchByFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.searchDetails),
        actions: [
          TextButton(
            onPressed: controller.resetFilters,
            child: Text(
              AppStrings.reset,
              style: AppTextStyle.font16primary400,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        children: [
          // Dropdown for Property Type
          DropDownWidget(
              items: [
                AppStrings.apartment,
                AppStrings.villa,
                AppStrings.office
              ],
              controller: controller.selectedPropertyType,
              label: AppStrings.typeOfProperty),

          16.hs,
          // Dropdown for City
          DropDownWidget(
              items: ["City A", "City B", "City C"],
              controller: controller.selectedCity,
              label: AppStrings.city),

          16.hs,
          // TextFormField for District
          Row(
            children: [
              GpsButton(),
              16.ws,
              Expanded(
                child: TextFormField(
                  controller: controller.districtController,
                  decoration:
                      const InputDecoration(labelText: AppStrings.district),
                  onChanged: (value) {
                    controller.selectedDistrict.value = value;
                  },
                ),
              ),
            ],
          ),

          16.hs,
          // Rooms Selection
          Row(
            children: [
              Text(
                AppStrings.rooms,
                style: AppTextStyle.font14black400,
              ),
              16.ws,
              Expanded(
                  child: SelectionRowWidget(
                controller: controller.selectedRooms,
                listLenght: 5,
                labels: ["1", "2", "3", "4", "5+"],
              )),
            ],
          ),

          16.hs,
          // Area (m²) Range
          Row(
            children: [
              Text(
                AppStrings.areaString,
                style: AppTextStyle.font14black400,
              ),
              16.ws,
              Expanded(
                child: TextFormField(
                  controller: controller.fromAreaController,
                  decoration: InputDecoration(labelText: AppStrings.from),
                  keyboardType: TextInputType.number,
                ),
              ),
              8.ws,
              Expanded(
                child: TextFormField(
                  controller: controller.toAreaController,
                  decoration: InputDecoration(labelText: AppStrings.to),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),

          16.hs,
          // Finishing Options
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.finishing,
                style: AppTextStyle.font14black400,
              ),
              16.ws,
              Expanded(
                  child: SelectionRowWidget(
                controller: controller.selectedFinishing,
                listLenght: 3,
                labels: [
                  AppStrings.withoutString,
                  AppStrings.half,
                  AppStrings.fullString
                ],
              )),
            ],
          ),

          16.hs,
          // Furnished Checkbox
          Row(
            children: [
              Expanded(
                child: CheckWidget(
                  controller: controller.isFurnished,
                  icon: "",
                  title: AppStrings.finishing,
                ),
              ),
              // With Parking Checkbox
              Expanded(
                  child: CheckWidget(
                controller: controller.withParking,
                icon: "",
                title: AppStrings.withParking,
              )),
            ],
          ),

          16.hs,
          // Price Range
          Row(
            children: [
              Text(
                AppStrings.price,
                style: AppTextStyle.font14black400,
              ),
              16.ws,
              Expanded(
                child: TextFormField(
                  controller: controller.fromPriceController,
                  decoration: const InputDecoration(labelText: AppStrings.from),
                  keyboardType: TextInputType.number,
                ),
              ),
              8.ws,
              Expanded(
                child: TextFormField(
                  controller: controller.toPriceController,
                  decoration: const InputDecoration(labelText: AppStrings.to),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),

          16.hs,
          // Type of Contract
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.typeOfContract,
                style: AppTextStyle.font14black400,
              ),
              16.ws,
              Expanded(
                  child: SelectionRowWidget(
                controller: controller.selectedContractType,
                listLenght: 2,
                labels: [AppStrings.forSell, AppStrings.forRent],
              )),
            ],
          ),

          16.hs,
          // Buttons
          AppButton1(
            title: AppStrings.search,
            onPressed: () {},
          ),
          8.hs,
          AppButton2(
            title: AppStrings.notifyMe,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
