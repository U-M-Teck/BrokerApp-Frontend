import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/app_color.dart';
import '../../../core/heplers/validation_form.dart';


class BuildingDateField extends StatelessWidget {
  final TextEditingController controller;
  const BuildingDateField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.none,
      validator: ValidationForm.buildingAreaValidator,
      controller: controller,
      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode());
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2101),
        );
        if (pickedDate != null) {
          controller.text = "${pickedDate.toLocal()}".split(' ')[0];
        }
      },
      decoration: InputDecoration(
        icon: AppImageView(
          svgPath: Assets.assetsSvgBuildingDate,
          height: 16.h,
          width: 16.w,
          color: AppColors.grey,
        ),
        labelText: AppStrings.buildingDate,
      ),
    );
  }
}
