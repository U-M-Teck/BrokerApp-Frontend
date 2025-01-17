import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import '../../../routes/app_pages.dart';
import '../../sign_in/data/provider/login_provider.dart';

class VerificationController extends GetxController {
  final LoginProvider _loginProvider = LoginProvider();
  //TODO: Implement VerificationController
  final TextEditingController codeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    void submitForm() {
       Get.offAllNamed(Routes.HOME);

  }
     Future<void> checkOtp() async {
    var checkData = {
        'phoneNumber': codeController.text,

      };
    try {
        final response = await _loginProvider.checkOtp(data: checkData);
        if (response.statusCode == 200) {
          Get.snackbar("Success", "Otp Send Successfully");
        } else {
          Get.snackbar("Error", "Invalid credentials");
        }
      } catch (e) {
        Get.snackbar("Error", "An error occurred during login");
        print(e);
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
