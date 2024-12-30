import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/assets.dart';
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
