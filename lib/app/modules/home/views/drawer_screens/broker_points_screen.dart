import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrokerPointsScreen extends StatelessWidget {
  const BrokerPointsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appBar: AppBar(
          title: Text(AppStrings.brokerPoints),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 12.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("You have 300 Broker Points!", style: AppTextStyle.font18black600),
                16.hs,
                TextButton(onPressed: () {}, child: Text(AppStrings.learnMore, style: AppTextStyle.font16primary600)),
              ],
            ),
          ),
        ));
  }
}
