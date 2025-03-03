import 'dart:async';

import 'package:broker/app/core/heplers/local_notification.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import '../../../core/heplers/firebase_notification.dart';
import '../../../core/services/storage_service.dart';

class SplashController extends GetxController {

  final count = 0.obs;

  @override
  void onInit()async {
    super.onInit();
     await Firebase.initializeApp();
  await   LocalNotifications.initialize();
 await FirebaseNotifications.init();
  await  FirebaseNotifications.listen();
    if (StorageService.getData("ownerId") != null) {
    }if (StorageService.getData("seekerId") != null) {
    }if (StorageService.getData("brokerId") != null) {
    }

    _loading();
  }

  _loading() {
    Timer(const Duration(seconds: 3), () {
      // check if the token is not null
      if ( StorageService.getData("userId") != null) {
        Get.offAllNamed(Routes.home);
      } else {
        Get.offAllNamed(Routes.onBording);
      }
    });
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  void increment() => count.value++;
}
