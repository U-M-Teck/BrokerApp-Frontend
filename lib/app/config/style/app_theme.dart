import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';
import 'app_text_styles.dart';

ThemeData get appTheme => ThemeData(
  
  dialogTheme: DialogTheme(
      insetPadding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h), 
  ),
  checkboxTheme: CheckboxThemeData(
      side: BorderSide(color: AppColors.grey,width: 2.w),
    
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4)
    )
  ),
    chipTheme: ChipThemeData(
        showCheckmark: false,
        selectedColor: AppColors.primary.withAlpha(75),
        backgroundColor: AppColors.white4,
        labelStyle: AppTextStyle.font14black400,
        secondaryLabelStyle: AppTextStyle.font14primary400),
    badgeTheme: BadgeThemeData(backgroundColor: AppColors.secondary),
    useMaterial3: true,
    fontFamily: "Alexandria",
    iconTheme: IconThemeData(color: AppColors.secondary),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.desSelected,
      selectedIconTheme: IconThemeData(color: AppColors.primary, size: 28),
      unselectedIconTheme:
          IconThemeData(color: AppColors.desSelected, size: 28),
      selectedLabelStyle: AppTextStyle.font14primary600,
      unselectedLabelStyle: AppTextStyle.font14desSelected500,
      type: BottomNavigationBarType.fixed,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.grey),
        centerTitle: true,
        titleTextStyle: AppTextStyle.font16black600,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarColor: AppColors.white,
            statusBarIconBrightness: Brightness.dark)),
    scaffoldBackgroundColor: AppColors.backGround,
    listTileTheme: ListTileThemeData(
        iconColor: AppColors.secondary,
        titleTextStyle: AppTextStyle.font16black500),
    highlightColor: Colors.transparent,
    focusColor: Colors.transparent,
    hoverColor: Colors.transparent,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: AppTextStyle.font16grey400,
        prefixIconConstraints: BoxConstraints.loose(Size(24.w, 24.h)),
        prefixIconColor: AppColors.primary,
        suffixIconColor: AppColors.grey,
        hintStyle: AppTextStyle.font16desSelected500,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white3,width: 2.w),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white3,width: 2.w),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white3,width: 2.w),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(double.infinity, 50.h),
            textStyle: AppTextStyle.font16white500,
            foregroundColor: AppColors.white,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)))),
    tabBarTheme: TabBarTheme(
      dividerColor: Colors.transparent,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: AppTextStyle.font16primary600,
      unselectedLabelStyle: AppTextStyle.font16desSelected500,
    ),
    colorScheme: const ColorScheme.light(
        secondary: AppColors.secondary,
        primary: AppColors.primary,
        surface: AppColors.backGround));
