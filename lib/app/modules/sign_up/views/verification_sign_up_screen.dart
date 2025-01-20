import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_scaffold.dart';
import 'package:broker/app/config/widgets/buttons/button_1.dart';
import 'package:broker/app/config/widgets/form_fields/code_field.dart';
import 'package:broker/app/modules/sign_up/controllers/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:stop_watch_timer/stop_watch_timer.dart';

class VerificationSignUpScreen extends GetView<SignUpController> {
  const VerificationSignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title:  Text(AppStrings.verification,style: AppTextStyle.font16black600,),
        centerTitle: true,
      ),
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0.w,vertical: 24.h),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment:Alignment.topLeft,child: Text(AppStrings.verificationCode,style: AppTextStyle.font18black400,)),
              24.hs,
              CodeField(controller: controller.codeController,),
              TextButton(onPressed: (){}, child: Text(AppStrings.resendCode,style: AppTextStyle.font16primary400,)),
              24.hs,
              StreamBuilder<int>(
                stream: controller.stopWatchTimer.rawTime,
                initialData: StopWatchTimer.getMilliSecFromMinute(1),
                builder: (context, snap) {
                  final displayTime = StopWatchTimer.getDisplayTime(snap.data!, hours: false, minute: true, second: true, milliSecond: false);
                  return Text(displayTime, style: AppTextStyle.font24black400);
                },
              ),
              24.hs,
              AppButton1(title: AppStrings.verify,onPressed: controller.submitForm,)
            ],
          ),
        ),
      )
    );
  }
}
