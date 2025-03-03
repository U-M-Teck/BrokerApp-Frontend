import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PropertyDetailsController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  final count = 0.obs;
  final isFullScreen = false.obs;
  final RxDouble sliderValue = 0.0.obs;
  final List<String> imagePaths = [
    Assets.assetsTempImage,
    Assets.assetsTempImage2,
    Assets.assetsTempImage,
    Assets.assetsTempImage2,
  ];




  void increment() => count.value++;

  void updateSliderValue(double value) {
    sliderValue.value = value;
  }
}
