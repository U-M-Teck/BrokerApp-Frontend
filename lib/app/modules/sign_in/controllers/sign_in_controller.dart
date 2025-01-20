import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/utils/app_utils/app_utils.dart';
import '../../../core/services/storage_service.dart';
import '../../../routes/app_pages.dart';
import '../data/provider/login_provider.dart';

class SignInController extends GetxController {
  final LoginProvider _loginProvider = LoginProvider();

  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final count = 0.obs;

  // Validates and submits the form
  bool _submitForm() {
    if (formKey.currentState?.validate() ?? false) {
      formKey.currentState?.save();
      return true;
    }
    Get.snackbar("Error", "Please fix the errors in the form");
    return false;
  }

  // Handles user login
  Future<void> login() async {
    if (_submitForm()) {
      final loginData = {
        'userNameOrEmailAddress': phoneNumberController.text,
        'password': passwordController.text,
      };

      try {
        final response = await _loginProvider.loginUser(data: loginData);

        if (response.statusCode == 200) {
          await StorageService.setData("token", response.data?.accessToken ?? "");

          // Send OTP after successful login
          await _sendOtp();

          Get.snackbar("Success", "Logged in successfully");
          Get.offAllNamed(Routes.VERIFICATION);
        } else {
          _showError("Invalid credentials");
        }
      } catch (e) {
        _showError("An error occurred during login");
      }
    }
  }

  // Sends OTP
  Future<void> _sendOtp() async {
    final checkData = {'phoneNumber': phoneNumberController.text};

    try {
      final response = await _loginProvider.checkOtp(data: checkData);

      if (response.statusCode == 200) {
        AppUtils.otp = response.data?.otp;
        // Get.snackbar("Success", "OTP sent: ${response.data?.otp}");
      } else {
        _showError("Failed to send OTP");
      }
    } catch (e) {
      _showError("An error occurred while sending OTP");
    }
  }

  // Helper to show error messages
  void _showError(String message) {
    Get.snackbar("Error", message, snackPosition: SnackPosition.BOTTOM);
  }

  // Increment counter
  void increment() => count.value++;

  @override
  void onClose() {
    phoneNumberController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
