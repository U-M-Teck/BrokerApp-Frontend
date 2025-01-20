import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/drawer.dart';
import 'package:broker/app/modules/my_ads/controllers/my_ads_controller.dart';
import 'package:broker/app/modules/my_ads/views/widgets/adds_item.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../config/widgets/pop_ups/clear_all_ads.dart';


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
          actions: [TextButton(onPressed: (){
            showDialog(context: 
            context, builder: (context)=> ClearAllAds());
          }, child: Text(AppStrings.clearAll))],
      leading: IconButton(
        onPressed: () {
          controller.scaffoldKey.currentState!.openDrawer();
        },
        icon: Icon(
          Icons.menu,
        ),
      ),
      title: Text(AppStrings.myAds),
        ),
        
        body: ListView.separated(
            itemBuilder: (context, index) => AddsItem(),
            separatorBuilder: (context, index) => 10.hs,
            itemCount: 20));
  }
}
