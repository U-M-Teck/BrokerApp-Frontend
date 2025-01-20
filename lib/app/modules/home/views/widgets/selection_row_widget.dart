import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/style/app_color.dart';

class SelectionRowWidget extends StatelessWidget {
  const SelectionRowWidget(
      {super.key,
      required this.controller,
      required this.listLenght,
      required this.labels});
  final RxInt controller; // Use RxInt for reactivity
  final int listLenght;
  final List<String> labels;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,

        child: Row(
          spacing: 8.w,
          children: List.generate(listLenght, (index) {
            return ChoiceChip(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: index == controller.value
                      ? AppColors.primary
                      : AppColors
                          .white4, // Different border color for selected/unselected
                  width: 2.w,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              label: Center(child: Text(labels[index])),
              selected: index == controller.value,
              onSelected: (selected) {
                controller.value = index;
              },
            );
          }),
        ),
      );
    });
  }
}
