import 'package:broker/app/modules/change_password/data/provider/change_password_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart'
    show StopWatchTimer, StopWatchMode;

import '../../../config/style/app_color.dart';
import '../../../config/utils/app_utils/app_utils.dart';
import '../../../routes/app_pages.dart';

class ChangePasswordController extends GetxController {
  final ChangePasswordProvider _changePasswordProvider =
      ChangePasswordProvider();
  final isLoading = false.obs;

  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> verifyFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> changeFormKey = GlobalKey<FormState>();
  bool _submitForgetForm() {
    if (formKey.currentState?.validate() ?? false) {
      formKey.currentState?.save();
      return true;
    }
    Get.snackbar(
      "Error",
      "Please fix the errors in the form",
      colorText: AppColors.primary,
    );
    return false;
  }

  bool _submitChangeForm() {
    if (changeFormKey.currentState?.validate() ?? false) {
      changeFormKey.currentState?.save();
      return true;
    }
    Get.snackbar(
      "Error",
      "Please fix the errors in the form",
      colorText: AppColors.primary,
    );
    return false;
  }

  void verifyCode() {
    if (verifyFormKey.currentState!.validate()) {
      verifyFormKey.currentState!.save();
      if (codeController.text != AppUtils.resetCode) {
        _showError("Invalid verification code");
        return;
      }
      Get.offAllNamed(Routes.changePassword);
    }
  }

  Future<void> forgetPassword() async {
    if (_submitForgetForm()) {
      isLoading.value = true;

      final forgetPasswordData = {
        'userNameOrEmailAddress': emailController.text,
      };

      try {
        final response = await _changePasswordProvider.forgetPassword(
          data: forgetPasswordData,
        );

        if (response.statusCode == 200) {
          AppUtils.resetCode = response.data?.result?.otp;
          AppUtils.email = emailController.text;
          Get.toNamed(Routes.verifyForgetPassword)?.then((_) {
            stopWatchTimer.onStartTimer();
          });
        } else {
          _showError("Invalid credentials");
        }
      } catch (e) {
        _showError("An error occurred during login");
      } finally {
        isLoading.value = false;
      }
    }
  }

  Future<void> changePassword() async {
    if (_submitChangeForm()) {
      isLoading.value = true;

      final changePasswordData = {
        "adminPassword": "123qwe",
        'newPassword': passwordController.text,
        'usernameOrEmailAddress': AppUtils.email,
        'resetCode': AppUtils.resetCode,
      };

      try {
        final response = await _changePasswordProvider.changePassword(
          data: changePasswordData,
        );

        if (response.data?.result == true) {
          Get.offAllNamed(Routes.signIn);
        } else {
          _showError("Invalid credentials");
        }
      } catch (e) {
        _showError("An error occurred during login");
      } finally {
        isLoading.value = false;
      }
    }
  }

  Future<void> resendOtp() async {
    isLoading.value = true;
    forgetPassword();
    stopWatchTimer.onResetTimer();
    stopWatchTimer.onStartTimer();
    codeController.clear();
    isLoading.value = false;
  }

  final StopWatchTimer stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countDown,
    presetMillisecond: StopWatchTimer.getMilliSecFromMinute(1),
  );
  void _showError(String message) {
    Get.snackbar(
      "Error",
      message,
      snackPosition: SnackPosition.BOTTOM,
      colorText: AppColors.primary,
    );
  }

  // @override
  // void onInit() {
  //   super.onInit();
  //   // Check if the current view is VerificationView
  //   if (Get.currentRoute == Routes.verifyForgetPassword) {
  //     stopWatchTimer.onStartTimer();
  //     // Debugging line to check if the timer starts
  //   }
  // }

  @override
  void onReady() {
    super.onReady();
    Get.find<ChangePasswordController>().stopWatchTimer.onStartTimer();
  }
}
