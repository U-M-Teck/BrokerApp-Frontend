import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewController extends GetxController {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController searchController = TextEditingController();

  final count = 0.obs;



  void increment() => count.value++;
}
