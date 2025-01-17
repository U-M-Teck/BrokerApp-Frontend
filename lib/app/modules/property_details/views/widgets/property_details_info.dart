import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';
import '../../../../config/style/app_color.dart';

class PropertyDetailsInfoItem extends StatelessWidget {
  final String title;
  final String value;
  final String icon;

  const PropertyDetailsInfoItem({super.key, required this.title, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w,
      children: [
        AppImageView(svgPath:icon,height: 16.h ,width: 16.w,color:  AppColors.primary,),
        Text("$title :",style: AppTextStyle.font14black400,),
        Text(value,style: AppTextStyle.font14black600,),
      ],
    );
  }
}
class PropertyDetailsInfo extends StatelessWidget {
  const PropertyDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      children: [
        PropertyDetailsInfoItem(
              title: AppStrings.property,
              value: "Chalet for rent",
              icon: Assets.assetsSvgPriceDetails,
            ),
            PropertyDetailsInfoItem(
              title: AppStrings.location,
              value: "North Coast",
              icon: Assets.assetsSvgLocation,
            ),
            PropertyDetailsInfoItem(
              title: AppStrings.rent,
              value: "200 EGP / Day",
              icon: Assets.assetsSvgPrice,
            ),
            PropertyDetailsInfoItem(
              title: AppStrings.minimumTime,
              value: "3 Days",
              icon: Assets.assetsSvgActive,
            ),
            PropertyDetailsInfoItem(
              title: AppStrings.views,
              value: "2541",
              icon: Assets.assetsSvgViews,
            ),
            PropertyDetailsInfoItem(
              title: AppStrings.documents,
              value: AppStrings.registeredString,
              icon: Assets.assetsSvgDocument,
            ),
      ]
    );
  }
}