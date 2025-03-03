import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/modules/home/views/widgets/notification_item.dart';
import 'package:broker/app/modules/layout/controllers/layout_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NotificationScreen extends GetView<LayoutController> {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.notification),
        ),
        body: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            itemBuilder: (context, index) => NotificationItem(
                  notifications: controller
                      .userNotificationsModel.value?.notifications?[index],
                ),
            separatorBuilder: (context, index) => 15.hs,
            itemCount: controller
                      .userNotificationsModel.value?.notifications?.length??0));
  }
}
