import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/form_fields/email_field.dart';
import 'package:broker/app/config/widgets/form_fields/text_field.dart';
import 'package:broker/app/modules/home/controllers/home_controller.dart';
import 'package:broker/app/modules/home/views/widgets/social_media_icon.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends GetView<HomeController> {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.contactUs),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          child: Column(
            spacing: 12.h,
            children: [
              EmailField(controller: controller.emailController),
              InkWell(
                onTap: 
                  controller.addImages
                ,
                  child: Row(
                    spacing: 15.w,
                    children: [
                      AppImageView(svgPath: Assets.assetsSvgAttachments,height: 24.h,width: 24.w,),
                      Obx(
                         () {
                          return Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(color: AppColors.white3,width: 2.w)
                              ),
                              child: controller.imageName.isEmpty?Text(AppStrings.attachments,style: AppTextStyle.font16desSelected500,):AppImageView(
                                file: controller.imageFile.value,
                                height: 180.h,
                                width: 180.w,
                              ),
                            ),
                          );
                        }
                      )
                    ],
                  )),
              TextFields(
                controller: controller.textSubjectController,
              ),
              20.hs,
              Column(
                spacing: 12.h,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton1(
                    title: AppStrings.send,
                    onPressed: controller.addContactUs,
                  ),
                  // WhatsAppButton(
                  //   onPressed: () {},
                  //   hight: 50.h,
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Row(
          spacing: 8.w,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.followUsOn,
              style: AppTextStyle.font16black400,
            ),
            SocialMediaIcon(
              icon: Assets.assetsSvgFacebook,
              onPressed: () => launchUrl(Uri.parse('https://www.facebook.com/brokerapp')),
            ),
            SocialMediaIcon(
              icon: Assets.assetsSvgSnapchat,
              onPressed: () => launchUrl(Uri.parse('https://x.com/brokerApp_EG')),
            ),
            SocialMediaIcon(
              icon: Assets.assetsSvgInstagram,
              onPressed: () => launchUrl(Uri.parse('https://www.instagram.com/brokerapp_/')),
            ),
            SocialMediaIcon(
              icon: Assets.assetsSvgTiktok,
              onPressed: () => launchUrl(Uri.parse('https://www.tiktok.com/@brokerapp_eg?lang=en')),
            ),
          ],
        ),
      ),
    );
  }
}
