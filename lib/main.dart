import 'package:broker/app/config/style/app_theme.dart';
import 'package:broker/app/core/binding/initial_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oktoast/oktoast.dart';

import 'app/core/heplers/localization_helper.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter_localizations/flutter_localizations.dart'
    show
        GlobalCupertinoLocalizations,
        GlobalMaterialLocalizations,
        GlobalWidgetsLocalizations;

void main() async {
  await GetStorage.init();
  runApp(ScreenUtilInit(
    designSize: const Size(375, 812),
    splitScreenMode: true,
    builder: (_, child) => OKToast(
      child: GetMaterialApp(
        supportedLocales: LocalizationHelper.locales,
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        locale: LocalizationHelper.local,
        translations: LocalizationHelper(),
        initialBinding: InitialBinding(),
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        title: "Application",
        initialRoute: Routes.SPLASH,
        getPages: AppPages.routes,
      ),
    ),
  ));
}
