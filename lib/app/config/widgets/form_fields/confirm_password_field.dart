import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/assets.dart';
import '../../utils/app_utils/app_strings.dart';
import '../../../core/heplers/validation_form.dart';
import '../app_image_view.dart';



class ConfirmPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final TextEditingController password;
  const ConfirmPasswordField({super.key, required this.controller,required this.password});

  @override
  State<ConfirmPasswordField> createState() => _ConfirmPasswordFieldState();
}

class _ConfirmPasswordFieldState extends State<ConfirmPasswordField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
            controller: widget.controller,
            obscureText: !isVisible,
            validator: (v)=>ValidationForm.confirmPasswordValidator(v,widget.password.text),
           
             keyboardType: TextInputType.visiblePassword,
             decoration: InputDecoration(
              icon:                 AppImageView(svgPath: Assets.assetsSvgLock,height: 24.h,width: 24.w,),
    
             
        
               hintText: AppStrings.confirmPassword,
              suffixIcon: IconButton(onPressed: (){
              setState(() {
                isVisible = !isVisible;
              });
             }, icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off,size: 25,))
             ),
           
          );
  }
}
