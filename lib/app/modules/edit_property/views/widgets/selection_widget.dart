import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/style/app_color.dart';
import '../../../../config/style/app_text_styles.dart';
import '../../../../config/widgets/app_image_view.dart';

class EditSelectionWidget extends StatelessWidget {
  EditSelectionWidget({
    super.key,
    required this.controller,
    required this.listLenght,
    required this.labels,
    required this.title,
    required this.icon,
    required this.onChanged,
    required this.initialValue,
  }) {
    listLenght != 5
        ? controller.value = initialValue - 1
        : controller.value = initialValue;
  }

  final RxInt controller; // Use RxInt for reactivity
  final int listLenght;
  final List<String> labels;
  final String title;
  final String icon;
  final Function(String) onChanged;
  final int initialValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AppImageView(
              svgPath: icon,
              height: 16.h,
              width: 16.w,
            ),
            SizedBox(width: 8.w),
            Text(
              title,
              style: AppTextStyle.font14grey400,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Obx(() {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(listLenght, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: ChoiceChip(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: index == controller.value
                            ? AppColors.primary
                            : AppColors.white4,
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    label: Text(labels[index]),
                    selected: controller.value == index,
                    onSelected: (selected) {
                      if (selected) {
                        controller.value = index;
                        onChanged(labels[index]);
                      }
                    },
                  ),
                );
              }),
            ),
          );
        }),
      ],
    );
  }
}
