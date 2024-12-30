import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_utils/app_strings.dart';
import '../../utils/heplers/validation_form.dart';


class EmailField extends StatelessWidget {
  final TextEditingController controller;
  const EmailField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: ValidationForm.nameValidator,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
         
        icon:  AppImageView(svgPath: Assets.assetsSvgEmail,height: 24.h,width: 24.w,),

        hintText: AppStrings.email,
        contentPadding:
            EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
      ),
    );
  }
}
