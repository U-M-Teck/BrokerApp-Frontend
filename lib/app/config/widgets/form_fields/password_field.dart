import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/assets.dart';
import '../../style/app_color.dart';
import '../../utils/app_utils/app_strings.dart';
import '../../utils/heplers/validation_form.dart';
import '../app_image_view.dart';


class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  const PasswordField({super.key, required this.controller});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            controller: widget.controller,
            obscureText: !isVisible,
            validator: ValidationForm.passwordValidator,
           
             keyboardType: TextInputType.visiblePassword,
             decoration: InputDecoration(
              icon:                 AppImageView(svgPath: Assets.assetsSvgLock,height: 24.h,width: 24.w,),
    
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
        contentPadding:
            EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
               hintText: AppStrings.password,
              suffixIcon: IconButton(onPressed: (){
              setState(() {
                isVisible = !isVisible;
              });
             }, icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off,size: 25,))
             ),
           
          );
  }
}
