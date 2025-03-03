import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_utils/app_strings.dart';
import '../../../core/heplers/validation_form.dart';


class PhoneNumberField extends StatelessWidget {
  final TextEditingController controller;
  final bool isReadOnly;

  const PhoneNumberField({super.key, required this.controller,
      this.isReadOnly = false,
});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: isReadOnly,
      controller: controller,
      validator: ValidationForm.phoneValidator,
      keyboardType: TextInputType.phone,
      inputFormatters: [LengthLimitingTextInputFormatter(11)],
      decoration: InputDecoration(
         
        icon:  AppImageView(svgPath: Assets.assetsSvgMobile,height: 24.h,width: 24.w,),
        
        hintText: AppStrings.phoneNumber,

      ),
    );
  }
}
