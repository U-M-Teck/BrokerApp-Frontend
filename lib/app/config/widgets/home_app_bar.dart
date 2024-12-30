import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/config/widgets/form_fields/search_field.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  final VoidCallback onPressed;
  final TextEditingController controller;
  const HomeAppBar(
      {super.key, required this.onPressed, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onPressed,
                    icon: AppImageView(svgPath: Assets.assetsSvgDrawer,height: 24.h,width: 24.w,),

      ),
      title: Row(
        children: [
          Expanded(
            child: SearchField(controller: controller),
          ),
          20.ws,
          
          IconButton(
            onPressed: () {
                Get.toNamed(Routes.searchByFilter);
              },
            icon: AppImageView(svgPath: Assets.assetsSvgSearchFilter,height: 24.h,width: 24.w,),
          ),
          Badge.count(
            count: 20,
            child: InkWell(
              child: AppImageView(svgPath: Assets.assetsSvgNotification,height: 24.h,width: 24.w,),
              onTap: () {
                Get.toNamed(Routes.notification);
              },
            ),
          ),
        ],
      ),
    );
  }
}
