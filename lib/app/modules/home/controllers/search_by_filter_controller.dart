import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchByFilterController extends GetxController {
  var selectedPropertyType = Rxn<String>();
  var selectedCity = Rxn<String>();
  var selectedDistrict = Rxn<String>();
  var isFurnished = false.obs;
  var withParking = false.obs;
  var selectedFinishing = 0.obs; // 0 = Without, 1 = Half, 2 = Full
  var selectedContractType = 0.obs; // 0 = For Sell, 1 = For Rent
  var selectedRooms = 0.obs; 

  final fromAreaController = TextEditingController();
  final toAreaController = TextEditingController();
  final fromPriceController = TextEditingController();
  final toPriceController = TextEditingController();
  final districtController = TextEditingController();

  // Reset all filters
  void resetFilters() {
    selectedPropertyType.value = null;
    selectedCity.value = null;
    selectedDistrict.value = null;
    isFurnished.value = false;
    withParking.value = false;
    selectedFinishing.value = 0;
    selectedContractType.value = 0;
    selectedRooms.value = 0;
    fromAreaController.clear();
    toAreaController.clear();
    fromPriceController.clear();
    toPriceController.clear();
    districtController.clear();
  }

  @override
  void onClose() {
    // Dispose of controllers when the controller is destroyed
    fromAreaController.dispose();
    toAreaController.dispose();
    fromPriceController.dispose();
    toPriceController.dispose();
    districtController.dispose();
    super.onClose();
  }
}
