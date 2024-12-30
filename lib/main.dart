import 'package:broker/app/config/style/app_theme.dart';
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
        
        theme: appTheme,
              debugShowCheckedModeBanner: false,
        title: "Application",
        initialRoute: Routes.SPLASH,
        getPages: AppPages.routes,
      ),
    ),
  ));
}
