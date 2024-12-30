import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/drawer.dart';
import 'package:broker/app/modules/my_ads/controllers/my_ads_controller.dart';
import 'package:broker/app/modules/my_ads/views/widgets/adds_item.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


class MyAdsView extends GetView<MyAdsController> {
      @override
      final MyAdsController controller =
      Get.put<MyAdsController>(MyAdsController());
   MyAdsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: DrawerWidget(),
        appBar: AppBar(
          actions: [TextButton(onPressed: (){}, child: Text("Clear All"))],
      leading: IconButton(
        onPressed: () {
          controller.scaffoldKey.currentState!.openDrawer();
        },
        icon: Icon(
          Icons.menu,
        ),
      ),
      title: Text("My Ads"),
        ),
        
        body: ListView.separated(
            itemBuilder: (context, index) => AddsItem(),
            separatorBuilder: (context, index) => 10.hs,
            itemCount: 20));
  }
}
