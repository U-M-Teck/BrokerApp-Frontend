import 'package:get/get.dart';

import '../controllers/my_ads_controller.dart';

class MyAdsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MyAdsController>(
       MyAdsController(),
    );
  }
}
