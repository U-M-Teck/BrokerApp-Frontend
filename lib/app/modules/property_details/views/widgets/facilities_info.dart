import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/modules/layout/data/model/get_adv_details_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';
import '../../../../config/style/app_color.dart';

class FacilitiesInfoItem extends StatelessWidget {
  final String title;
  final String value;
  final String icon;

  const FacilitiesInfoItem(
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
        Expanded(
            child: Text(
          title,
          style: AppTextStyle.font14black400,
        )),
        Text(
          value,
          style: AppTextStyle.font14black600,
        ),
      ],
    );
  }
}

class FacilitiesInfo extends StatelessWidget {
  final Details? details;
  const FacilitiesInfo({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 8.h, children: [
      Row(spacing: 8.w, children: [
        AppImageView(
          svgPath: Assets.assetsSvgFacilites,
          height: 16.h,
          width: 16.w,
          color: AppColors.primary,
        ),
        Text(
          AppStrings.facilities,
          style: AppTextStyle.font16black600,
        ),
      ]),
      Row(
        spacing: 24.w,
        children: [
          Expanded(
            child: FacilitiesInfoItem(
              title: AppStrings.water,
              value: details?.facilites?[1].isChecked ?? "",
              icon: Assets.assetsSvgWater,
            ),
          ),
          Expanded(
            child: FacilitiesInfoItem(
              title: AppStrings.electricity,
              value: details?.facilites?[2].isChecked ?? "",
              icon: Assets.assetsSvgElectricity,
            ),
          ),
        ],
      ),
      Row(
        spacing: 24.w,
        children: [
          Expanded(
            child: FacilitiesInfoItem(
              title: AppStrings.gas,
              value: details?.facilites?[4].isChecked ?? "",
              icon: Assets.assetsSvgGas,
            ),
          ),
          Expanded(
            child: FacilitiesInfoItem(
              title: AppStrings.phone,
              value: details?.facilites?[5].isChecked ?? "",
              icon: Assets.assetsSvgPhone,
            ),
          ),
        ],
      ),
      Row(
        spacing: 24.w,
        children: [
          Expanded(
            child: FacilitiesInfoItem(
              title: AppStrings.internet,
              value: details?.facilites?[3].isChecked ?? "",
              icon: Assets.assetsSvgInternet,
            ),
          ),
          Expanded(
            child: FacilitiesInfoItem(
              title: "",
              value: "",
              icon: "",
            ),
          ),
        ],
      ),
    ]);
  }
}
