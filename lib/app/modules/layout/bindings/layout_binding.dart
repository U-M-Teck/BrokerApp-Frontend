import 'package:get/get.dart';

import '../controllers/layout_controller.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LayoutController>(
      LayoutController(),
    );
  }
}
