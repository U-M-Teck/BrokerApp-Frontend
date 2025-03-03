import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  final count = 0.obs;




  void increment() => count.value++;
}
