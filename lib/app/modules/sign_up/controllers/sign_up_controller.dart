import 'package:broker/app/modules/sign_up/data/provider/sign_up_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import '../../../config/style/app_color.dart';
import '../../../config/utils/app_utils/app_utils.dart';
import '../../../routes/app_pages.dart';

class SignUpController extends GetxController {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController whatsappController = TextEditingController();
  final SignUpProvider _signUpProvider = SignUpProvider();

  final GlobalKey<FormState> signUpKey = GlobalKey<FormState>();
  final GlobalKey<FormState> personalDataKey = GlobalKey<FormState>();
  final RxInt selectedIndex = 0.obs;
  final RxBool isWhatsappAvailable = false.obs;
  final TextEditingController codeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final isLoading = false.obs;

  bool _submitForm() {
    if (personalDataKey.currentState?.validate() ?? false) {
      personalDataKey.currentState?.save();
      return true;
    }
    Get.snackbar("Error", "Please fix the errors in the form",
              colorText: AppColors.primary
);
    return false;
  }

  void submitForm() {
    if (formKey.currentState!.validate()) {
      Get.offAllNamed(Routes.personalData);
    }
  }

  final StopWatchTimer stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countDown,
    presetMillisecond: StopWatchTimer.getMilliSecFromMinute(1),
  );

  Future<void> createAccount() async {
    if (_submitForm()) {
      isLoading.value = true;

      final signUpData = {
        'userName': nameController.text,
        'userSurname': nameController.text,
        'userEmailAddress': emailController.text,
        'userPhoneNumber': AppUtils.phoneNumber,
        'userPassword': passwordController.text,
        "isWhatsApped":"${isWhatsappAvailable.value}",
        "secondMobile": isWhatsappAvailable.value==true?whatsappController.text:"",
      };

      try {
        if (selectedIndex.value == 0) {
          final response = await _signUpProvider.createSeeker(data: signUpData);
          if (response.data?.success == true) {
            Get.snackbar("Success", "Account created successfully",
                      colorText: AppColors.primary
);
            Get.offAllNamed(Routes.signIn);
          } else {
            _showError(response.data?.error ?? "");
          }
        } else if (selectedIndex.value == 1) {
          final response = await _signUpProvider.createOwner(data: signUpData);
          if (response.data?.success == true) {
            Get.snackbar("Success", "Account created successfully",          colorText: AppColors.primary
);
            Get.offAllNamed(Routes.signIn);
          } else {
            _showError(response.data?.error ?? "");
          }
        } else {
          final response = await _signUpProvider.createBroker(data: signUpData);
          if (response.data?.success == true) {
            Get.snackbar("Success", "Account created successfully",          colorText: AppColors.primary
);
            Get.offAllNamed(Routes.signIn);
          } else {
            _showError(response.data?.error ?? "");
          }
        }
      } catch (e) {
        _showError("An error occurred during login");
      } finally {
        isLoading.value = false;
      }
    }
  }

  Future<void> resendOtp() async {
    final checkData = {'phoneNumber': AppUtils.phoneNumber};

    try {
      final response = await _signUpProvider.checkOtp(data: checkData);

      if (response.statusCode == 200) {
        AppUtils.otp = response.data?.otp;
        stopWatchTimer.onStartTimer();
        // Get.snackbar("Success", "OTP sent: ${response.data?.otp}");
      } else {
        _showError("Failed to send OTP");
      }
    } catch (e) {
      _showError("An error occurred while sending OTP");
    }
  }

  Future<void> sendOtp() async {
    isLoading.value = true;
    final checkData = {'phoneNumber': phoneController.text};

    try {
      final checkPhoneNumberResponse = await _signUpProvider.checkPhoneNumber(
        data: checkData,
      );

      if (checkPhoneNumberResponse.data?.isSuccess == false) {
        _showError(checkPhoneNumberResponse.data?.message ?? "");
      } else {

        if (checkPhoneNumberResponse.statusCode == 200) {
          AppUtils.otp = checkPhoneNumberResponse.data?.otp;
          AppUtils.phoneNumber = phoneController.text;
          // Get.snackbar("Success", "OTP sent: ${response.data?.otp}");
          Get.offAllNamed(Routes.signUpVerification);
        } else {
          _showError("Failed to send OTP");
        }
      }
    } catch (e) {
      _showError("An error occurred while sending OTP");
    } finally {
      isLoading.value = false;
    }
  }

  void _showError(String message) {
    Get.snackbar("Error", message, snackPosition: SnackPosition.BOTTOM,
              colorText: AppColors.primary
);
  }

  @override
  void onInit() {
    super.onInit();
    if (Get.currentRoute == Routes.signUpVerification) {
      stopWatchTimer.onStartTimer();
    }
    if (Get.currentRoute == Routes.personalData) {
      phoneController.text = AppUtils.phoneNumber??"";
    }
  }



}
