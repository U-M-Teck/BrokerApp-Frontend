import 'package:broker/app/modules/sign_in/data/provider/login_provider.dart';
import 'package:get/get.dart';

import '../controllers/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginProvider>(LoginProvider());
    Get.put<SignInController>(
      SignInController(),
    );
  }
}
