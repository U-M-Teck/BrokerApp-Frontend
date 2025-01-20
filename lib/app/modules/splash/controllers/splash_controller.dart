import 'dart:async';

import 'package:broker/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../core/services/storage_service.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _loading();
  }

  _loading() {
    Timer(const Duration(seconds: 3), () {
      // check if the token is not null
      if (StorageService.getData("token") != null) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.offAllNamed(Routes.ON_BORDING);
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
