import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';

class AppTextStyle {
  ///FontSize
  static final TextStyle _fontSize24 = TextStyle(fontSize: 24.sp);
  static final TextStyle _fontSize18 = TextStyle(fontSize: 18.sp);
  static final TextStyle _fontSize16 = TextStyle(fontSize: 16.sp);
  static final TextStyle _fontSize14 = TextStyle(fontSize: 14.sp);
  static final TextStyle _fontSize12 = TextStyle(fontSize: 12.sp);
  static final TextStyle _fontSize10 = TextStyle(fontSize: 10.sp);

  ///FontWeight
  static const TextStyle _fontWeight700 =
      TextStyle(fontWeight: FontWeight.w700);
  static const TextStyle _fontWeight600 =
      TextStyle(fontWeight: FontWeight.w600);
  static const TextStyle _fontWeight500 =
      TextStyle(fontWeight: FontWeight.w500);
  static const TextStyle _fontWeight400 =
      TextStyle(fontWeight: FontWeight.w400);

  ///Font Family
  static const TextStyle _fontPoppins = TextStyle(fontFamily: "Poppins", height: 1);

  ///FontStyle
  static TextStyle font24white700 = _fontPoppins
      .merge(_fontWeight700)
      .merge(_fontSize24)
      .copyWith(color: AppColors.white);
        static TextStyle font24black400 = _fontPoppins
      .merge(_fontWeight400)
      .merge(_fontSize24)
      .copyWith(color: AppColors.black);
  static TextStyle font18secondary600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize18)
      .copyWith(color: AppColors.secondary);
        static TextStyle font18primary600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize18)
      .copyWith(color: AppColors.primary);
        static TextStyle font18black600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize18)
      .copyWith(color: AppColors.black);
  static TextStyle font18black400 = _fontPoppins
      .merge(_fontWeight400)
      .merge(_fontSize18)
      .copyWith(color: AppColors.black);
        static TextStyle font16black400 = _fontPoppins
      .merge(_fontWeight400)
      .merge(_fontSize16)
      .copyWith(color: AppColors.black);
              static TextStyle font16grey400 = _fontPoppins
      .merge(_fontWeight400)
      .merge(_fontSize16)
      .copyWith(color: AppColors.grey);
              static TextStyle font16white400 = _fontPoppins
      .merge(_fontWeight400)
      .merge(_fontSize16)
      .copyWith(color: AppColors.white);
              static TextStyle font16primary400 = _fontPoppins
      .merge(_fontWeight400)
      .merge(_fontSize16)
      .copyWith(color: AppColors.primary);
  static TextStyle font16primary600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize16)
      .copyWith(color: AppColors.primary);
        static TextStyle font16secondary600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize16)
      .copyWith(color: AppColors.secondary);
  static TextStyle font14primary600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize14)
      .copyWith(color: AppColors.primary);

  static TextStyle font16desSelected500 = _fontPoppins
      .merge(_fontWeight500)
      .merge(_fontSize16)
      .copyWith(color: AppColors.desSelected);
  static TextStyle font14desSelected500 = _fontPoppins
      .merge(_fontWeight500)
      .merge(_fontSize14)
      .copyWith(color: AppColors.desSelected);
  static TextStyle font14desSelected600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize14)
      .copyWith(color: AppColors.desSelected);
  static TextStyle font16black500 = _fontPoppins
      .merge(_fontWeight500)
      .merge(_fontSize16)
      .copyWith(color: AppColors.black);
  static TextStyle font16black600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize16)
      .copyWith(color: AppColors.black);
        static TextStyle font16grey600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize16)
      .copyWith(color: AppColors.grey);

  static TextStyle font16white500 = _fontPoppins
      .merge(_fontWeight500)
      .merge(_fontSize16)
      .copyWith(color: AppColors.white);

  static TextStyle font16white600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize16)
      .copyWith(color: AppColors.white);
  static TextStyle font14black600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize14)
      .copyWith(color: AppColors.black);
        static TextStyle font14grey400 = _fontPoppins
      .merge(_fontWeight400)
      .merge(_fontSize14)
      .copyWith(color: AppColors.grey);
              static TextStyle font14black400 = _fontPoppins
      .merge(_fontWeight400)
      .merge(_fontSize14)
      .copyWith(color: AppColors.black);
              static TextStyle font14red400 = _fontPoppins
      .merge(_fontWeight400)
      .merge(_fontSize14)
      .copyWith(color: AppColors.red);
                    static TextStyle font14primary400 = _fontPoppins
      .merge(_fontWeight400)
      .merge(_fontSize14)
      .copyWith(color: AppColors.primary);
  static TextStyle font12desSelected600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize12)
      .copyWith(color: AppColors.desSelected);
  static TextStyle font12white600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize12)
      .copyWith(color: AppColors.white);
  static TextStyle font14white600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize14)
      .copyWith(color: AppColors.white);
  static TextStyle font12black600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize12)
      .copyWith(color: AppColors.black);
        static TextStyle font12black400 = _fontPoppins
      .merge(_fontWeight400)
      .merge(_fontSize12)
      .copyWith(color: AppColors.black);
              static TextStyle font12grey400 = _fontPoppins
      .merge(_fontWeight400)
      .merge(_fontSize12)
      .copyWith(color: AppColors.grey);
        static TextStyle font10grey600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize10)
      .copyWith(color: AppColors.grey);
              static TextStyle font10primary600 = _fontPoppins
      .merge(_fontWeight600)
      .merge(_fontSize10)
      .copyWith(color: AppColors.primary);
}
