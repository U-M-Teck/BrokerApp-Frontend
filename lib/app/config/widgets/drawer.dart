import 'package:broker/app/config/utils/app_utils/app_utils.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/config/widgets/pop_ups/delete_account.dart';
import 'package:broker/app/config/widgets/pop_ups/sign_out.dart';
import 'package:broker/app/core/services/storage_service.dart';
import 'package:broker/app/modules/home/views/drawer_screens/rate_us_screen.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/home/views/drawer_screens/change_language_screen.dart';
import '../style/app_color.dart';
import '../style/app_text_styles.dart';
import '../utils/app_utils/app_strings.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          _drawerHeader(),
          StorageService.getData("token") == null &&
                  StorageService.getData("userId") == null
              ? SizedBox()
              : ListTile(
                onTap: () {
                  Get.toNamed(Routes.userInformation);
                },
                leading: AppImageView(
                  svgPath: Assets.assetsSvgUser,
                  color: AppColors.grey,
                  height: 24.h,
                  width: 24.w,
                ),
                title: Text(AppStrings.personalData),
              ),
          StorageService.getData("token") == null &&
                  StorageService.getData("userId") == null
              ? SizedBox()
              : ListTile(
                onTap: () {
                  Get.toNamed(Routes.brokerPoints);
                },
                leading: AppImageView(
                  svgPath: Assets.assetsSvgUAward,
                  color: AppColors.grey,
                  height: 24.h,
                  width: 24.w,
                ),
                title: Text(AppStrings.brokerPoints),
              ),
          // StorageService.getData("token") == null &&
          //         StorageService.getData("userId") == null
          //     ? SizedBox()
          //     : ListTile(
          //       onTap: () {
          //         Get.toNamed(Routes.changePassword);
          //       },
          //       leading: AppImageView(
          //         svgPath: Assets.assetsSvgLock,
          //         color: AppColors.grey,
          //         height: 24.h,
          //         width: 24.w,
          //       ),
          //       title: Text(AppStrings.changePassword),
          //     ),
          StorageService.getData("token") == null &&
                  StorageService.getData("userId") == null
              ? SizedBox()
              : ListTile(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return RateUsScreen();
                    },
                  );
                },
                leading: AppImageView(
                  svgPath: Assets.assetsSvgRateUs,
                  color: AppColors.grey,
                  height: 24.h,
                  width: 24.w,
                ),
                title: Text(AppStrings.rateUs),
              ),
          ListTile(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return ChangeLanguageScreen();
                },
              );
            },
            leading: AppImageView(
              svgPath: Assets.assetsSvgLanguage,
              color: AppColors.grey,
              height: 24.h,
              width: 24.w,
            ),
            title: Text(AppStrings.language),
          ),
          StorageService.getData("token") == null &&
                  StorageService.getData("userId") == null
              ? SizedBox()
              : ListTile(
                onTap: () {
                  Get.toNamed(Routes.contactUs);
                },
                leading: AppImageView(
                  svgPath: Assets.assetsSvgCalling,
                  color: AppColors.grey,
                  height: 24.h,
                  width: 24.w,
                ),
                title: Text(AppStrings.contactUs),
              ),
          StorageService.getData("token") == null &&
                  StorageService.getData("userId") == null
              ? SizedBox()
              : ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (builder) => DeleteAccount(),
                  );
                },
                leading: AppImageView(
                  svgPath: Assets.assetsSvgDeleteAccount,
                  color: AppColors.grey,
                  height: 24.h,
                  width: 24.w,
                ),
                title: Text(AppStrings.deleteAccount),
              ),
          ListTile(
            onTap: () {
              showDialog(context: context, builder: (builder)=>SignOut());
            },
            leading: AppImageView(
              svgPath: Assets.assetsSvgSignOut,
              color: AppColors.red,
              height: 24.h,
              width: 24.w,
            ),
            title: Text(
              StorageService.getData("token") == null &&
                      StorageService.getData("userId") == null
                  ? AppStrings.signIn
                  : AppStrings.signout,
            ),
          ),
          ListTile(
            leading: Text(AppUtils.version ,style: AppTextStyle.font18black600,),
          )
        ],
      ),
      
    );
  }

  Widget _drawerHeader() => SizedBox(
    height: 175.h,
    child: Container(
      decoration: BoxDecoration(color: Colors.transparent),
      padding: EdgeInsets.only(right: 20.w, top: 100.h, left: 20.w),
      child: Text(
        StorageService.getData("userName") ?? "",
        style: AppTextStyle.font24black400,
      ),
    ),
  );
}
