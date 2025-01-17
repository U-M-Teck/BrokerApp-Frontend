import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';
import '../../../../config/style/app_color.dart';

class PropertyDescriptionItem extends StatelessWidget {
  final String title;
  final String value;
  final String icon;

  const PropertyDescriptionItem(
      {super.key,
      required this.title,
      required this.value,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w,
      children: [
        AppImageView(
          svgPath: icon,
          height: 16.h,
          width: 16.w,
          color: AppColors.primary,
        ),
        Text(
          title,
          style: AppTextStyle.font14black400,
        ),
        Spacer(),
        Text(
          value,
          style: AppTextStyle.font14black600,
        ),
      ],
    );
  }
}

class PropertyDesctiptionInfo extends StatelessWidget {
  const PropertyDesctiptionInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
      decoration: BoxDecoration(
        color: AppColors.primary.withAlpha(25),
        borderRadius: BorderRadius.circular(8),
        
      ),
      child: Column(spacing: 14.h, children: [
        PropertyDescriptionItem(
          title: AppStrings.areaString,
          value: "75m",
          icon: Assets.assetsSvgArea,
        ),
        PropertyDescriptionItem(
          title: AppStrings.bedRooms,
          value: "2",
          icon: Assets.assetsSvgDoor,
        ),
        PropertyDescriptionItem(
          title: AppStrings.floor,
          value: "Ground",
          icon: Assets.assetsSvgLevel,
        ),
        PropertyDescriptionItem(
          title: AppStrings.reception,
          value: "1",
          icon: Assets.assetsSvgBed,
        ),
        PropertyDescriptionItem(
          title: AppStrings.toilet,
          value: "2",
          icon: Assets.assetsSvgPath,
        ),
        PropertyDescriptionItem(
          title: AppStrings.diningRoom,
          value: AppStrings.yes,
          icon: Assets.assetsSvgDining,
        ),
        PropertyDescriptionItem(
          title: AppStrings.balcony,
          value: "2",
          icon: Assets.assetsSvgBalcony,
        ),
        PropertyDescriptionItem(
          title: AppStrings.kitchen,
          value: AppStrings.yes,
          icon: Assets.assetsSvgKitchen,
        ),
        PropertyDescriptionItem(
          title: AppStrings.finishing,
          value: AppStrings.fullString,
          icon: Assets.assetsSvgFinishing,
        ),
        PropertyDescriptionItem(
          title: AppStrings.elevator,
          value: AppStrings.no,
          icon: Assets.assetsSvgElevator,
        ),
        PropertyDescriptionItem(
          title: AppStrings.furnished,
          value: AppStrings.yes,
          icon: Assets.assetsSvgFurnished,
        ),
        PropertyDescriptionItem(
          title: AppStrings.garden,
          value: "Yes, 50m",
          icon: Assets.assetsSvgGarden,
        ),
        PropertyDescriptionItem(
          title: AppStrings.parking,
          value: AppStrings.yes,
          icon: Assets.assetsSvgParking,
        ),
        PropertyDescriptionItem(
          title: AppStrings.ac,
          value: AppStrings.yes,
          icon: Assets.assetsSvgAc,
        ),
        PropertyDescriptionItem(
          title: AppStrings.seaDistance,
          value: "100m",
          icon: Assets.assetsSvgSeaDistance,
        ),
        PropertyDescriptionItem(
          title: AppStrings.pool,
          value: AppStrings.yes,
          icon: Assets.assetsSvgPool,
        ),
      ]),
    );
  }
}
