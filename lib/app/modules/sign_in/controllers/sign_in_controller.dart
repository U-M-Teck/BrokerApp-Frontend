import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/utils/services/storage_service.dart';
import '../../../routes/app_pages.dart';
import '../data/provider/login_provider.dart';

class SignInController extends GetxController {
  final LoginProvider _loginProvider = LoginProvider();
  late final StorageService appStorage;

  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool submitForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      return true;
    } else {
      return false;
    }
  }

  final count = 0.obs;

  Future<void> login() async {
    if (submitForm()) {
      var loginData = {
        'userNameOrEmailAddress': phoneNumberController.text,
        'password': passwordController.text
      };
      try {
        final response = await _loginProvider.loginUser(data: loginData);
        if (response.statusCode == 200) {
          checkOtp().then((value) {
            Get.offAllNamed(Routes.VERIFICATION);
          });
        } else {
          Get.snackbar("Error", "Invalid credentials");
        }
      } catch (e) {
        Get.snackbar("Error", "An error occurred during login");
        print(e);
      }
    } else {
      Get.snackbar("Error", "Please fix the errors in the form");
    }
  }
   Future<void> checkOtp() async {
    var checkData = {
        'phoneNumber': phoneNumberController.text,

      };
    try {
        final response = await _loginProvider.checkOtp(data: checkData);
        if (response.statusCode == 200) {
          Get.snackbar("Success", "Otp is ${response.data?.otp}");
        } else {
          Get.snackbar("Error", "Invalid credentials");
        }
      } catch (e) {
        Get.snackbar("Error", "An error occurred during login");
        print(e);
      }
  }

  void increment() => count.value++;

  @override
  void onInit() {
    super.onInit();

    // Ensure StorageService is registered
    if (!Get.isRegistered<StorageService>()) {
      Get.put(StorageService());
    }
    appStorage = Get.find<StorageService>();
  }

  @override
  void onClose() {
    phoneNumberController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
