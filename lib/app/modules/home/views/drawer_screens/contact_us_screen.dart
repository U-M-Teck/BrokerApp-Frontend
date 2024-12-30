import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/buttons/whats_app_button.dart';
import 'package:broker/app/config/widgets/form_fields/attachments_field.dart';
import 'package:broker/app/config/widgets/form_fields/email_field.dart';
import 'package:broker/app/config/widgets/form_fields/text_field.dart';
import 'package:broker/app/modules/home/views/widgets/social_media_icon.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.contactUs),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 12.h),
          child: Column(
            spacing: 12.h,
            children: [
              EmailField(controller: TextEditingController())
              ,
              AttachmentsField(controller: TextEditingController()),
              TextFields(controller: TextEditingController(),),
              20.hs,
              Column(
                spacing: 12.h,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton1(title: "Send",),
                  WhatsAppButton(onPressed: (){},hight: 50.h,)
                ],
              ),
             
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical:20.h),
        child: Row(
          spacing: 8.w,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Follow Us On",style: AppTextStyle.font16black400,),
            SocialMediaIcon(icon: Assets.assetsSvgFacebook),
            SocialMediaIcon(icon: Assets.assetsSvgSnapchat),
            SocialMediaIcon(icon: Assets.assetsSvgInstagram),
            SocialMediaIcon(icon: Assets.assetsSvgTiktok),
          ],
        ),
      ),
    );
  }
}
