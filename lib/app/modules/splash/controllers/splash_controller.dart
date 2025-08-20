import 'dart:async';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/core/heplers/local_notification.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/heplers/firebase_notification.dart';
import '../../../core/services/storage_service.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await Firebase.initializeApp();
    await LocalNotifications.initialize();
    await FirebaseNotifications.init();
    await FirebaseNotifications.listen();
    _loading();
  }

  Future<void> _loading() async {
    await Future.delayed(const Duration(seconds: 2)); // splash delay

    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.every(
      (result) => result == ConnectivityResult.none,
    )) {
      Get.offAllNamed(Routes.noInternet);
      return;
    }

    // ✅ Check if app needs update
    bool needsUpdate = await _isUpdateRequired();
    if (needsUpdate) {
      _showUpdateDialog();
      return;
    }

    // ✅ Navigate normally
    if (StorageService.getData("userId") != null) {
      Get.offAllNamed(Routes.home);
    } else {
      Get.offAllNamed(Routes.onBording);
    }
  }

  Future<bool> _isUpdateRequired() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: Duration.zero, // Always fetch latest
      ),
    );
    await remoteConfig.fetchAndActivate();

    String latestVersion;
    if (GetPlatform.isAndroid) {
      latestVersion = remoteConfig.getString('latest_version_android');
    } else {
      latestVersion = remoteConfig.getString('latest_version_ios');
    }
    print("Latest version from remote config: $latestVersion");
    if (latestVersion.isEmpty) {
      print("No latest version found in remote config.");
      return false; // No update required if no version is set
    }
    final info = await PackageInfo.fromPlatform();
    final currentVersion = info.version;

    return _compareVersions(currentVersion, latestVersion);
  }

  bool _compareVersions(String current, String latest) {
    List<int> c = current.split('.').map(int.parse).toList();
    List<int> l = latest.split('.').map(int.parse).toList();

    for (int i = 0; i < l.length; i++) {
      if (c.length <= i || c[i] < l[i]) return true;
      if (c[i] > l[i]) return false;
    }
    return false;
  }

  void _showUpdateDialog() {
    Get.defaultDialog(
      title: AppStrings.updateRequired,
      content: Text(
        AppStrings.newVersion,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, height: 1.5),
      ),
      barrierDismissible: false,
      confirm: ElevatedButton(
        onPressed: () {
          // For example, using url_launcher package and check for the device then redirect for google play or app store:
          final androidUrl =
              'https://play.google.com/store/apps/details?id=com.nahrdev.broker';
          final iosUrl = 'https://apps.apple.com/app/id6474085928';
          if (GetPlatform.isAndroid) {
            launchUrl(
              Uri.parse(androidUrl),
              mode: LaunchMode.externalApplication,
            );
          } else if (GetPlatform.isIOS) {
            launchUrl(Uri.parse(iosUrl), mode: LaunchMode.externalApplication);
          }
        },
        child: Text(AppStrings.updateNow),
      ),
    );
  }
}
