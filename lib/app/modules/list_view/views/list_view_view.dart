import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/home_app_bar.dart';
import 'package:broker/app/modules/list_view/views/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../config/widgets/drawer.dart';
import '../controllers/list_view_controller.dart';

class ListViewView extends GetView<ListViewController> {
      @override
      final ListViewController controller =
      Get.put<ListViewController>(ListViewController());
   ListViewView({super.key});
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
      body: ListView.separated(itemBuilder: (context,index)=>ListItem(), separatorBuilder: (context,index)=>10.hs, itemCount: 20)
    );
  }
}
