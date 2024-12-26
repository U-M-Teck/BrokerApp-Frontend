import 'package:broker/app/config/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: const Size(375, 812),
    splitScreenMode: true,
    builder: (_, child) => OKToast(
      child: GetMaterialApp(
        title: "Application",
        initialRoute: Routes.SIGN_IN,
        getPages: AppPages.routes,
      ),
    ),
  ));
}
