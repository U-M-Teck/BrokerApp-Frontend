import 'package:get/get.dart';


class AddPropertyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPropertyBinding>(
      () => AddPropertyBinding(),
    );
  }
}
