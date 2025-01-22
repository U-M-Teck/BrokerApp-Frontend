import 'package:get/get.dart';

import '../services/storage_service.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // Inject StorageService which internally uses GetStorage
    Get.put(StorageService());
  }
}

