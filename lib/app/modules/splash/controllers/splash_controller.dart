import 'dart:async';

import 'package:broker/app/core/heplers/local_notification.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../core/heplers/firebase_notification.dart';
import '../../../core/services/storage_service.dart';

class SplashController extends GetxController {
  final count = 0.obs;

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
    await Future.delayed(const Duration(seconds: 3)); // Simulate splash screen delay

    var connectivityResult = await Connectivity().checkConnectivity();
    
    if (connectivityResult[0] == ConnectivityResult.none) {
      Get.offAllNamed(Routes.noInternet);
      return;
    }

    // Navigate based on user authentication status
    if (StorageService.getData("userId") != null) {
      Get.offAllNamed(Routes.home);
    } else {
      Get.offAllNamed(Routes.onBording);
    }
  }

  void increment() => count.value++;
}
