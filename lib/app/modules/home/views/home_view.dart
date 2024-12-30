import 'package:broker/app/config/widgets/drawer.dart';
import 'package:broker/app/config/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
    @override
      final HomeController controller =
      Get.put<HomeController>(HomeController());

   HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      key: controller.scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0.h),
        child: HomeAppBar(onPressed: () {
          controller.scaffoldKey.currentState!.openDrawer();
        }, controller: controller.searchController,),
      ),
      body: 
      // GoogleMap(
      //   initialCameraPosition: CameraPosition(
      //     target: LatLng(24.7136, 46.6753),
      //     zoom: 10,
      //   ),
      //   markers: {
      //     Marker(
      //       markerId: MarkerId('marker1'),
      //       position: LatLng(24.7136, 46.6753),
      //       infoWindow: InfoWindow(title: '200K'),
      //     ),
      //   },
      // ),
      Center(child: Text("data"),)
    );
  }
}
