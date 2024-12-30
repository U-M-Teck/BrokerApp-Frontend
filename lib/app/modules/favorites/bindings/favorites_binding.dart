import 'package:get/get.dart';

import '../controllers/favorites_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoritesController>(
      () => FavoritesController(),
    );
  }
}
