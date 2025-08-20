import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AppStatusBar {
  static hide() => SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);

  static show() => SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: SystemUiOverlay.values);

static setStatusBarStyle({
  Brightness? statusBarIconBrightness,
}) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: statusBarIconBrightness ?? Brightness.dark,
      statusBarColor: Colors.transparent, // ✅ Transparent for edge-to-edge
      systemNavigationBarColor: Colors.transparent, // ✅ Also transparent
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: null, // ✅ Don't set this (deprecated)
    ),
  );
}

}
