import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/style/app_color.dart';
import '../../controllers/search_by_filter_controller.dart';

class SearchByFilterScreen extends StatelessWidget {
  final SearchByFilterController controller =
      Get.put(SearchByFilterController());

  SearchByFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Details"),
        actions: [
          TextButton(
            onPressed: controller.resetFilters,
            child: Text(
              "Reset",
              style: AppTextStyle.font16primary400,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        children: [
          // Dropdown for Property Type
          Obx(() {
            return DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: "Type of Property"),
              items: ["Apartment", "Villa", "Office"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              value: controller.selectedPropertyType.value,
              onChanged: (value) {
                controller.selectedPropertyType.value = value;
              },
            );
          }),

          16.hs,
          // Dropdown for City
          Obx(() {
            return DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: "City"),
              items: ["City A", "City B", "City C"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              value: controller.selectedCity.value,
              onChanged: (value) {
                controller.selectedCity.value = value;
              },
            );
          }),

          16.hs,
          // TextFormField for District
          TextFormField(
            controller: controller.districtController,
            decoration: const InputDecoration(labelText: "District"),
            onChanged: (value) {
              controller.selectedDistrict.value = value;
            },
          ),

          16.hs,
          // Rooms Selection
          Row(
            children: [
              const Text("Rooms"),
              16.ws,
              Obx(() {
                return Wrap(
                  spacing: 8,
                  children: List.generate(5, (index) {
                    return ChoiceChip(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: index == controller.selectedRooms.value
                              ? AppColors.primary
                              : AppColors
                                  .white4, // Different border color for selected/unselected
                          width: 2.w,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      label: Text(index < 4 ? "${index + 1}" : "5+"),
                      selected: index == controller.selectedRooms.value,
                      onSelected: (selected) {
                        controller.selectedRooms.value = index;
                      },
                    );
                  }),
                );
              }),
            ],
          ),

          16.hs,
          // Area (m²) Range
          Row(
            children: [
              const Text("Area (m²)"),
              16.ws,
              Expanded(
                child: TextFormField(
                  controller: controller.fromAreaController,
                  decoration: const InputDecoration(labelText: "From"),
                  keyboardType: TextInputType.number,
                ),
              ),
              8.ws,
              Expanded(
                child: TextFormField(
                  controller: controller.toAreaController,
                  decoration: const InputDecoration(labelText: "To"),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),

          16.hs,
          // Finishing Options
          Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Finishing"),
                Wrap(
                  spacing: 8,
                  children: List.generate(3, (index) {
                    return ChoiceChip(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: index == controller.selectedFinishing.value
                              ? AppColors.primary
                              : AppColors.white4,
                          width: 2.w,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      label: Text(index == 0
                          ? "Without"
                          : index == 1
                              ? "Half"
                              : "Full"),
                      selected: controller.selectedFinishing.value == index,
                      onSelected: (selected) {
                        controller.selectedFinishing.value = index;
                      },
                    );
                  }),
                ),
              ],
            );
          }),

          16.hs,
          // Furnished Checkbox
          Row(
            children: [
              Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Furnished"),
                    50.ws,
                    Checkbox(
                      value: controller.isFurnished.value,
                      onChanged: (value) {
                        controller.isFurnished.value = value ?? false;
                      },
                    ),
                  ],
                );
              }),
              Spacer(),
              // With Parking Checkbox
              Obx(() {
                return Row(
                  children: [
                    const Text("With Parking"),
                    50.ws,
                    Checkbox(
                      value: controller.withParking.value,
                      onChanged: (value) {
                        controller.withParking.value = value ?? false;
                      },
                    ),
                  ],
                );
              }),
            ],
          ),

          16.hs,
          // Price Range
          Row(
            children: [
              const Text("Price"),
              16.ws,
              Expanded(
                child: TextFormField(
                  controller: controller.fromPriceController,
                  decoration: const InputDecoration(labelText: "From"),
                  keyboardType: TextInputType.number,
                ),
              ),
              8.ws,
              Expanded(
                child: TextFormField(
                  controller: controller.toPriceController,
                  decoration: const InputDecoration(labelText: "To"),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),

          16.hs,
          // Type of Contract
          Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Type of Contract"),
                Wrap(
                  spacing: 8,
                  children: List.generate(2, (index) {
                    return ChoiceChip(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: index == controller.selectedContractType.value
                              ? AppColors.primary
                              : AppColors.white4,
                          width: 2.w,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      label: Text(index == 0 ? "For Sell" : "For Rent"),
                      selected: controller.selectedContractType.value == index,
                      onSelected: (selected) {
                        controller.selectedContractType.value = index;
                      },
                    );
                  }),
                ),
              ],
            );
          }),

          16.hs,
          // Buttons
          ElevatedButton(
            onPressed: () {
              // Handle Search
            },
            child: const Text("Search"),
          ),
          8.hs,
          ElevatedButton(
            onPressed: () {
              // Handle Notify Me
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.secondary, // Customize button color
            ),
            child: const Text("Notify Me"),
          ),
        ],
      ),
    );
  }
}
