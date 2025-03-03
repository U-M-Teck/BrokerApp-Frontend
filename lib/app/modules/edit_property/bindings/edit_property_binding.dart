import 'package:broker/app/modules/add_property/controllers/add_apartment_controller.dart';
import 'package:get/get.dart';


class EditPropertyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AddApartmentController>(
       AddApartmentController(),
    );
  }
}
