import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../style/app_color.dart';
import '../style/app_text_styles.dart';

class HomeAppBar extends StatelessWidget {
  final VoidCallback onPressed;
  const HomeAppBar({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
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
            child: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.search);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.white3, width: 2.w),
                    
                  ),child: Row(
                    children: [
                      AppImageView(
                        svgPath: Assets.assetsSvgSearch,
                        height: 24.h,
                        width: 24.w,
                        color: AppColors.grey,
                      ),
                      8.ws,
                      Text(
                        'Search',
                        style: AppTextStyle.font16grey400,
                      ),
                    ],
                  ),),
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
          Badge.count(
            count: 20,
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
          ),
        ],
      ),
    );
  }
}
