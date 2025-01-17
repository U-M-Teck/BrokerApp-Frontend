import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          ListTile(
            onTap: () {},
            leading: AppImageView(svgPath: Assets.assetsSvgUser,color: AppColors.grey,height: 24.h,width: 24.w,),
            title: Text(AppStrings.personalData),
          ),
          ListTile(
            onTap: () {
              Get.toNamed(Routes.brokerPoints);
            },
            leading: AppImageView(svgPath: Assets.assetsSvgUAward,color: AppColors.grey,height: 24.h,width: 24.w,),
            title: Text(AppStrings.brokerPoints),
          ),
          ListTile(
            onTap: () {
              Get.toNamed(Routes.CHANGE_PASSWORD);
            },
            leading: AppImageView(svgPath: Assets.assetsSvgLock,color: AppColors.grey,height: 24.h,width: 24.w,),
            title: Text(AppStrings.changePassword),
          ),
          ListTile(
            onTap: () {

            },
            leading: AppImageView(svgPath: Assets.assetsSvgRateUs,color: AppColors.grey,height: 24.h,width: 24.w,),
            title: Text(AppStrings.rateUs),
          ),
          ListTile(
            onTap: () {},
            leading: AppImageView(svgPath: Assets.assetsSvgLanguage,color: AppColors.grey,height: 24.h,width: 24.w,),
            title: Text(AppStrings.language),
          ),
          ListTile(
            onTap: () {
              Get.toNamed(Routes.contactUs);

            },
            leading: AppImageView(svgPath: Assets.assetsSvgCalling,color: AppColors.grey,height: 24.h,width: 24.w,),
            title: Text(AppStrings.contactUs),
          ),
          ListTile(
            onTap: () {},
            leading: AppImageView(svgPath: Assets.assetsSvgDeleteAccount,color: AppColors.grey,height: 24.h,width: 24.w,),
            title: Text(AppStrings.deleteAccount),
          ),
          ListTile(
            onTap: () {},
            leading: AppImageView(svgPath: Assets.assetsSvgSignOut,color: AppColors.red,height: 24.h,width: 24.w,),

            title: Text(AppStrings.signout),
          ),
        ],
      ),
    );
  }

  Widget _drawerHeader() => SizedBox(
        height: 175.h,
        child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppImageView(
                    width: 60.w,
                    height: 60.h,
                    fit: BoxFit.cover,
                    shape: BoxShape.circle,
                    url:
                        'https://www.shutterstock.com/image-photo/profile-picture-smiling-successful-young-260nw-2040223583.jpg'),
                10.ws,
                Text(
                  'Uday Hegde',
                  style: AppTextStyle.font16black600,
                ),
              ],
            )),
      );
}
