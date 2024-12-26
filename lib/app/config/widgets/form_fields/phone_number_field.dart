import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_utils/app_strings.dart';
import '../../utils/heplers/validation_form.dart';


class PhoneNumberField extends StatelessWidget {
  final TextEditingController controller;
  const PhoneNumberField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: ValidationForm.phoneValidator,
      keyboardType: TextInputType.phone,
      inputFormatters: [LengthLimitingTextInputFormatter(11)],
      decoration: InputDecoration(
         
        icon:  AppImageView(svgPath: Assets.assetsSvgMobile,height: 24.h,width: 24.w,),
        border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(color: AppColors.desSelected, width: 1)),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: AppColors.desSelected, width: 1)
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.desSelected, width: 1),
        ),
        focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: AppColors.red)),
        enabled: true,
        hintText: AppStrings.phoneNumber,
        contentPadding:
            EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
      ),
    );
  }
}
