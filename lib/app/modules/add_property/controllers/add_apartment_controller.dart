import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../config/utils/heplers/image_picker.dart';

class AddApartmentController extends GetxController {
  final RxBool isWhatsAppAvailable = false.obs;

  var isFurnished = false.obs;
  var hasElevator = false.obs;
  var hasParking = false.obs;
  var hasGarden = false.obs;
  var isRegistered = false.obs;
  var hasWater = false.obs;
  var hasGas = false.obs;
  var hasElectricity = false.obs;
  var hasPhone = false.obs;
  var hasInternet = false.obs;
  var selectedContractType = 0.obs; // 0 = For Sell, 1 = For Rent
  var propertyStatus = 0.obs;
  var finishing = 0.obs;
  var rent = 0.obs;
  var selectedRooms = 0.obs;
  var selectedCity = Rxn<String>();
  var recieption = 0.obs;
  var dining = 0.obs;
  var balcony = 0.obs;
  var kitchen = 0.obs;
  var toilet = 0.obs;
  var documents = 0.obs;

  var imageFiles = <File?>[].obs;

  final areaController = TextEditingController();
  final priceController = TextEditingController();
  final levelController = TextEditingController();
  final descriptionController = TextEditingController();

  var selectedImage1 = Rxn<File>(); // متغير لتخزين الصورة الأولى
  var selectedImage2 = Rxn<File>(); // متغير لتخزين الصورة الثانية
  var selectedImage3 = Rxn<File>(); // متغير لتخزين الصورة الثالثة

  @override
  void onClose() {
    // Dispose of controllers when the controller is destroyed
    selectedContractType.value = 0;
    rent.value=0;
    propertyStatus.value = 0;
        selectedCity.value = null;
    finishing.value = 0;
    selectedRooms.value = 0;
    recieption.value = 0;
    dining.value = 0;
    balcony.value = 0;
    kitchen.value = 0;
    toilet.value = 0;
    documents.value = 0;

    areaController.dispose();
    levelController.dispose();
    priceController.dispose();
    descriptionController.dispose();

    super.onClose();
  }

  void addImages() async {
   var image = await ImagePickerUtils.getImage(source: ImageSource.camera);
      if (image != null) {
        imageFiles.add(image); // Add the new image to the list
      }
    // إضافة الكود لتخزين الصور المحددة
  }

  void removeImage(int index) {
    if (index >= 0 && index < imageFiles.length) {
      imageFiles.removeAt(index); // إزالة الصورة من القائمة
    }
  }
}
