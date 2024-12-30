import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/modules/home/views/home_view.dart';
import 'package:broker/app/modules/layout/views/widgets/bottom_nav_bar_item.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../favorites/views/favorites_view.dart';
import '../../list_view/views/list_view_view.dart';
import '../../my_ads/views/my_ads_view.dart';
import '../controllers/layout_controller.dart';

class LayoutView extends StatelessWidget {
  final LayoutController controller = Get.put(LayoutController());

  LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (controller.selectedIndex.value) {
          case 0:
            return HomeView();
          case 1:
            return ListViewView();
          case 3:
            return FavoritesView();
          case 4:
            return MyAdsView();
          default:
            return HomeView();
        }
      }),
      bottomNavigationBar: Obx(() => Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 4.0,
                  offset: Offset(0.0, 3.0),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: AppColors.primary,
                unselectedItemColor: AppColors.grey,
                selectedLabelStyle: AppTextStyle.font10primary600,
                unselectedLabelStyle: AppTextStyle.font10grey600,
                currentIndex: controller.selectedIndex.value,
                showUnselectedLabels: false,
                showSelectedLabels: false,
                onTap: (index) {
                  if (index == 2) {
                  } else {
                    controller.changeIndex(index);
                  }
                },
                items: [
                  BottomNavigationBarItem(
                    icon: BottomNavBarItem(
                      isSelected: controller.selectedIndex.value == 0,
                      icon: Assets.assetsSvgHome, title: 'Home',
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: BottomNavBarItem(
                      isSelected: controller.selectedIndex.value == 1,
                      icon: Assets.assetsSvgList, title: 'ListView',
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: AppColors.secondary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 35),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: BottomNavBarItem(
                      isSelected: controller.selectedIndex.value == 3,
                      icon: Assets.assetsSvgFavorites, title: 'Favorites',
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: BottomNavBarItem(
                      isSelected: controller.selectedIndex.value == 4,
                      icon: Assets.assetsSvgAds, title: 'MyAds',
                    ),
                    label: '',
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
