import 'package:get/get.dart';

import '../controllers/my_ads_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyAdsController>(
      () => MyAdsController(),
    );
  }
}
