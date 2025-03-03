import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/modules/home/controllers/home_controller.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/services/storage_service.dart';
import '../../../modules/layout/controllers/layout_controller.dart';

class HomeAppBar extends StatelessWidget {
  final VoidCallback onPressed;
  const HomeAppBar({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final layoutController = Get.find<LayoutController>();
    final homeController = Get.find<HomeController>();
    return AppBar(
      leading: IconButton(
        onPressed: onPressed,
        icon: AppImageView(
          svgPath: Assets.assetsSvgDrawer,
          height: 24.h,
          width: 24.w,
        ),
      ),
      title: Row(
        children: [
          Expanded(
            child:Obx(
               () {
                return TextFormField(
                          onTap: () {
                           homeController.searchPlace(context);
                          },
                          controller:
                              TextEditingController(text: homeController.address.value),
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search_rounded)),
                          readOnly: true,
                        );
              }
            ),
          ),
          20.ws,
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.searchByFilter);
            },
            icon: AppImageView(
              svgPath: Assets.assetsSvgSearchFilter,
              height: 24.h,
              width: 24.w,
            ),
          ),
        StorageService.getData("token") == null &&
                    StorageService.getData("userId") == null
                ? SizedBox():  Obx(
             () {
              return Badge.count(
                count: layoutController.userNotificationsModel.value?.notifications?.length??0,
                child: InkWell(
                  child: AppImageView(
                    svgPath: Assets.assetsSvgNotification,
                    height: 24.h,
                    width: 24.w,
                  ),
                  onTap: () {
                    Get.toNamed(Routes.notification);
                  },
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
