import 'package:broker/app/modules/layout/controllers/layout_controller.dart';
import 'package:get/get.dart';

import '../controllers/property_details_controller.dart';

class PropertyDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PropertyDetailsController>(
      PropertyDetailsController(),
    );
    Get.put<LayoutController>(LayoutController());
  }
}
