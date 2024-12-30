import 'package:get/get.dart';

import '../controllers/list_view_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListViewController>(
      () => ListViewController(),
    );
  }
}
