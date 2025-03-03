import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
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
      keyboardType: TextInputType.text,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.grey.withOpacity(0.3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.grey.withOpacity(0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.primary),
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 24.w,
          minHeight: 24.h,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: AppImageView(
            svgPath: Assets.assetsSvgSearch,
            height: 20.h,
            width: 20.w,
            color: AppColors.grey,
          ),
        ),
        hintText: AppStrings.search,
        hintStyle: TextStyle(
          color: AppColors.grey,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
