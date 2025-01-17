import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const SearchField({super.key, required this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: controller,
      keyboardType: TextInputType.name,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
         prefixIconConstraints: BoxConstraints(
          minWidth: 24.w, // Adjust based on your needs
          minHeight: 24.h, // Adjust based on your needs
        ),
prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: AppImageView(
            svgPath: Assets.assetsSvgSearch,
            height: 24.h,
            width: 24.w,
            color: AppColors.grey,
          ),
        ), 
        hintText: "Search",

      ),
    );
  }
}
