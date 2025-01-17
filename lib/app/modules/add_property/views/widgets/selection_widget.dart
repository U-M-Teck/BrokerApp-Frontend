import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/style/app_color.dart';
import '../../../../config/style/app_text_styles.dart';
import '../../../../config/widgets/app_image_view.dart';

class SelectionWidget extends StatelessWidget {
  const SelectionWidget({
    super.key,
    required this.controller,
    required this.listLenght,
    required this.labels,
    required this.title,
    required this.icon,
    this.isExpanded = true,
  });
  final bool? isExpanded;
  final RxInt controller; // Use RxInt for reactivity
  final int listLenght;
  final List<String> labels;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 8.w,
          children: [
            AppImageView(
              svgPath: icon,
              height: 16.h,
              width: 16.w,
            ),
            Text(
              title,
              style: AppTextStyle.font14grey400,
            ),
          ],
        ),
        8.hs,
        Obx(() {
          return isExpanded == true
              ? Row(
                  spacing: 8.w,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(listLenght, (index) {
                    return Expanded(
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
                        label: Center(child: Text(labels[index])),
                        selected: controller.value == index,
                        onSelected: (selected) {
                          if (selected) {
                            controller.value =
                                index; // Update the reactive value
                          }
                        },
                      ),
                    );
                  }),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 8.w,
                    children: List.generate(listLenght, (index) {
                      return ChoiceChip(
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
                          }
                        },
                      );
                    }),
                  ),
                );
        }),
      ],
    );
  }
}
