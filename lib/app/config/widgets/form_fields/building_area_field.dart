import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/app_color.dart';
import '../../../core/heplers/validation_form.dart';


class BuildingAreaField extends StatelessWidget {
  final TextEditingController controller;
  const BuildingAreaField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
       inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
     keyboardType: TextInputType.number,
              validator: ValidationForm.buildingAreaValidator,
              controller: controller,
              decoration: InputDecoration(
                icon: AppImageView(
                  svgPath: Assets.assetsSvgArea,
                  height: 16.h,
                  width: 16.w,
                  color: AppColors.grey,
                ),
                labelText: AppStrings.buildingArea,
              ),
    );
  }
}
