import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import '../../../routes/app_pages.dart';

class VerificationController extends GetxController {
  //TODO: Implement VerificationController
  final TextEditingController codeController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    void submitForm() {
      if (formKey.currentState!.validate()) {
        // Get.snackbar("Success", StorageService.getData("token")??"no token");

       Get.offAllNamed(Routes.HOME);
      }
          
  }

  final StopWatchTimer stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countDown,
    presetMillisecond: StopWatchTimer.getMilliSecFromMinute(1),
  );

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    stopWatchTimer.onStartTimer();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    stopWatchTimer.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
