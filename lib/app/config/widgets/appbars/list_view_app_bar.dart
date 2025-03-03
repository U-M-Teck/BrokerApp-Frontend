import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/services/storage_service.dart';
import '../../../modules/layout/controllers/layout_controller.dart';

class ListViewAppBar extends StatelessWidget {
  final VoidCallback onPressed;
  const ListViewAppBar({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final layoutController = Get.find<LayoutController>();
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
          Spacer(),
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
              ? SizedBox.shrink()
              : Obx(() {
                return Badge.count(
                  count:
                      layoutController
                          .userNotificationsModel
                          .value
                          ?.notifications
                          ?.length ??
                      0,
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
              }),
        ],
      ),
    );
  }
}
