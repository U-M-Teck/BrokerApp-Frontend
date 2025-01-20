import 'package:broker/app/modules/change_password/data/provider/change_password_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/utils/app_utils/app_utils.dart';
import '../../../routes/app_pages.dart';

class ChangePasswordController extends GetxController {
  final ChangePasswordProvider _changePasswordProvider =
      ChangePasswordProvider();

  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> verifyFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> changeFormKey = GlobalKey<FormState>();
  //TODO: Implement ChangePasswordController
  bool _submitForgetForm() {
    if (formKey.currentState?.validate() ?? false) {
      formKey.currentState?.save();
      return true;
    }
    Get.snackbar("Error", "Please fix the errors in the form");
    return false;
  }

  bool _submitChangeForm() {
    if (changeFormKey.currentState?.validate() ?? false) {
      formKey.currentState?.save();
      return true;
    }
    Get.snackbar("Error", "Please fix the errors in the form");
    return false;
  }

  void verifyCode() {
    if (verifyFormKey.currentState!.validate()) {
      Get.offAllNamed(Routes.CHANGE_PASSWORD);
    }
  }

  Future<void> forgetPassword() async {
    if (_submitForgetForm()) {
      final forgetPasswordData = {
        'userNameOrEmailAddress': emailController.text,
      };

      try {
        final response = await _changePasswordProvider.forgetPassword(
            data: forgetPasswordData);

        if (response.statusCode == 200) {
          AppUtils.resetCode = response.data?.result;
          AppUtils.email = emailController.text;
          Get.snackbar("Success", "Code sent: ${response.data?.result}");
          Get.toNamed(Routes.Verify_Forget_PASSWORD);
        } else {
          _showError("Invalid credentials");
        }
      } catch (e) {
        _showError("An error occurred during login");
      }
    }
  }

  Future<void> changePassword() async {
    if (_submitChangeForm()) {
      final changePasswordData = {
        "adminPassword": "123qwe",
        'newPassword': passwordController.text,
        'usernameOrEmailAddress': AppUtils.email,
        'resetCode': AppUtils.resetCode,
      };

      try {
        final response = await _changePasswordProvider.changePassword(
            data: changePasswordData);

        if (response.statusCode == 200) {
          Get.snackbar("Success", "Logged in successfully");
          Get.offAllNamed(Routes.SIGN_IN);
        } else {
          _showError("Invalid credentials");
        }
      } catch (e) {
        _showError("An error occurred during login");
      }
    }
  }

  void _showError(String message) {
    Get.snackbar("Error", message, snackPosition: SnackPosition.BOTTOM);
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
