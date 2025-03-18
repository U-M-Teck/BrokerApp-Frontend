import 'package:broker/app/core/heplers/check_internet.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

import 'dart:async';


class InternetController extends GetxController {
  var isConnected = RxBool(false); // Start as false, to prevent premature navigation
  StreamSubscription<List<ConnectivityResult>>? _subscription;

  @override
  void onInit() {
    super.onInit();
    
    _checkInitialConnection(); // Check internet at startup

    // Listen to connectivity changes
    _subscription = Connectivity().onConnectivityChanged.listen((results) async {
      await Future.delayed(const Duration(seconds: 1)); // Debounce to avoid flickering

      if (results.isNotEmpty) {
        bool currentStatus = CheckInternet.isConnected(results); // Check first connectivity result

        if (isConnected.value != currentStatus) {
          isConnected.value = currentStatus;
          _handleNavigation();
        }
      }
    });
  }

  // Check initial connection before deciding the navigation
  Future<void> _checkInitialConnection() async {
    await Future.delayed(const Duration(milliseconds: 500)); // Delay to ensure proper detection

    var results = await Connectivity().checkConnectivity();
    if (results.isNotEmpty) {
      bool currentStatus = CheckInternet.isConnected(results);

      // Only trigger navigation if it's a true status change
      if (isConnected.value != currentStatus) {
        isConnected.value = currentStatus;
        _handleNavigation();
      }
    }
  }

  void _handleNavigation() {
    if (isConnected.value) {
      if (Get.currentRoute == Routes.noInternet) {
        Get.offAllNamed(Routes.home); // Navigate back to home only if on the noInternet screen
      }
    } else {
      Get.offAllNamed(Routes.noInternet); // Navigate to No Internet screen
    }
  }

  @override
  void onClose() {
    _subscription?.cancel();
    super.onClose();
  }
}

class AppCheckInternetBuilder extends StatelessWidget {
  final Widget child;
  const AppCheckInternetBuilder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Get.put(InternetController());

    return child; // Keep returning the child, navigation is handled in the controller
  }
}

