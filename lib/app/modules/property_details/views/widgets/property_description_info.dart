import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';
import '../../../../config/style/app_color.dart';
import '../../../layout/data/model/get_adv_details_model.dart';

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
  final Details? details;

  const PropertyDesctiptionInfo({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: AppColors.primary.withAlpha(25),
        borderRadius: BorderRadius.circular(8),
      ),
      child: details?.type == 4
          ? _buildBuilding()
          : details?.type == 5
              ? _buildAdminOffice()
              : details?.type == 6
                  ? _buildShop()
                  : details?.type == 7
                      ? _buildLand()
                      : Column(spacing: 14.h, children: [
                          PropertyDescriptionItem(
                            title: AppStrings.areaString,
                            value: details?.area ?? "",
                            icon: Assets.assetsSvgArea,
                          ),
                          PropertyDescriptionItem(
                            title: AppStrings.bedRooms,
                            value: "${details?.rooms ?? ""}",
                            icon: Assets.assetsSvgDoor,
                          ),
                          PropertyDescriptionItem(
                            title: AppStrings.floor,
                            value: "${details?.floorsNumber ?? ""}",
                            icon: Assets.assetsSvgLevel,
                          ),
                          PropertyDescriptionItem(
                            title: AppStrings.reception,
                            value: "${details?.reception ?? ""}",
                            icon: Assets.assetsSvgBed,
                          ),
                          PropertyDescriptionItem(
                            title: AppStrings.toilet,
                            value: "${details?.toilet ?? ""}",
                            icon: Assets.assetsSvgPath,
                          ),
                          PropertyDescriptionItem(
                            title: AppStrings.diningRoom,
                            value: "${details?.dinning ?? ""}",
                            icon: Assets.assetsSvgDining,
                          ),
                          PropertyDescriptionItem(
                            title: AppStrings.balcony,
                            value: "${details?.balcony ?? ""}",
                            icon: Assets.assetsSvgBalcony,
                          ),
                          PropertyDescriptionItem(
                            title: AppStrings.kitchen,
                            value: "${details?.kitchen ?? ""}",
                            icon: Assets.assetsSvgKitchen,
                          ),
                          PropertyDescriptionItem(
                            title: AppStrings.finishing,
                            value: details?.decoration ?? "",
                            icon: Assets.assetsSvgFinishing,
                          ),
                          PropertyDescriptionItem(
                            title: AppStrings.elevator,
                            value: details?.elevator ?? "",
                            icon: Assets.assetsSvgElevator,
                          ),
                          PropertyDescriptionItem(
                            title: AppStrings.furnished,
                            value: details?.furnished ?? "",
                            icon: Assets.assetsSvgFurnished,
                          ),
                          PropertyDescriptionItem(
                            title: AppStrings.garden,
                            value:
                                "${details?.garden ?? ""}${details?.garden == "Yes" ? " / ${details?.gardenArea}" : ""}",
                            icon: Assets.assetsSvgGarden,
                          ),
                          PropertyDescriptionItem(
                            title: AppStrings.parking,
                            value: details?.parking ?? "",
                            icon: Assets.assetsSvgParking,
                          ),
                          // PropertyDescriptionItem(
                          //   title: AppStrings.seaDistance,
                          //   value: "100m",
                          //   icon: Assets.assetsSvgSeaDistance,
                          // ),
                          details?.type == 2 || details?.type == 3
                              ? PropertyDescriptionItem(
                                  title: AppStrings.pool,
                                  value: details?.pool??"",
                                  icon: Assets.assetsSvgPool,
                                )
                              : SizedBox(),
                        ]),
    );
  }

  Widget _buildLand() => Column(
    spacing: 14.h,
        children: [
          PropertyDescriptionItem(
            title: "Land Area",
            value: details?.area ?? "",
            icon: Assets.assetsSvgArea,
          ),
          PropertyDescriptionItem(
            title: "Width",
            value: "${details?.width ?? ""}m",
            icon: Assets.assetsSvgBuildingWidth,
          ),
          PropertyDescriptionItem(
            title: "Lenght",
            value: "${details?.length ?? ""}m",
            icon: Assets.assetsSvgBuildingWidth,
          ),
          PropertyDescriptionItem(
            title: "Street Width",
            value: "${details?.streetWidth ?? ""}m",
            icon: Assets.assetsSvgStreetWidth,
          ),
        ],
      );
  Widget _buildShop() => Column(
    spacing: 14.h,
        children: [
          PropertyDescriptionItem(
            title: "Area",
            value: details?.area ?? "",
            icon: Assets.assetsSvgArea,
          ),
          PropertyDescriptionItem(
            title: "Street Width",
            value: "${details?.streetWidth ?? ""}m",
            icon: Assets.assetsSvgStreetWidth,
          ),
          PropertyDescriptionItem(
            title: AppStrings.finishing,
            value: details?.decoration ?? "",
            icon: Assets.assetsSvgFinishing,
          ),
        ],
      );
  Widget _buildBuilding() => Column(
    spacing: 14.h,
        children: [
          PropertyDescriptionItem(
            title: "Land Area",
            value: details?.area ?? "",
            icon: Assets.assetsSvgArea,
          ),
          PropertyDescriptionItem(
            title: "Building Area",
            value: "${details?.buildingArea ?? ""}m",
            icon: Assets.assetsSvgArea,
          ),
          PropertyDescriptionItem(
            title: AppStrings.floor,
            value: "${details?.floorsNumber ?? ""}",
            icon: Assets.assetsSvgLevel,
          ),

          PropertyDescriptionItem(
            title: "Using For",
            value: details?.usingForString ?? "",
            icon: Assets.assetsSvgUsingFor2,
          ),
          PropertyDescriptionItem(
            title: "No. of units",
            value: "${details?.numUnits ?? ""}",
            icon: Assets.assetsSvgDoor,
          ),
          PropertyDescriptionItem(
            title: AppStrings.elevator,
            value: details?.elevator ?? "",
            icon: Assets.assetsSvgElevator,
          ),
          PropertyDescriptionItem(
            title: AppStrings.finishing,
            value: details?.decoration ?? "",
            icon: Assets.assetsSvgFinishing,
          ),
          PropertyDescriptionItem(
            title: AppStrings.garden,
            value: "${details?.garden} / ${details?.garden=="Yes"?"${details?.gardenArea}m":""}",
            icon: Assets.assetsSvgGarden,
          ),
          PropertyDescriptionItem(
            title: AppStrings.parking,
            value: "${details?.parking} / ${details?.parking=="Yes"?"${details?.parkingSpace}m":""}",
            icon: Assets.assetsSvgParking,
          ),

          PropertyDescriptionItem(
            title: AppStrings.shop,
            value: "${details?.shop} / ${details?.shopsNumber}",
            icon: Assets.assetsSvgShop,
          ),
          PropertyDescriptionItem(
            title: "Date",
            value: "${details?.buildingDate ?? ""}",
            icon: Assets.assetsSvgBuildingDate,
          ),
          PropertyDescriptionItem(
            title: "Building Width",
            value: "${details?.width ?? ""}m",
            icon: Assets.assetsSvgBuildingWidth,
          ),
          PropertyDescriptionItem(
            title: "Building Length",
            value: "${details?.length ?? ""}m",
            icon: Assets.assetsSvgBuildingWidth,
          ),
        ],
      );
  Widget _buildAdminOffice() => Column(
    spacing: 14.h,
        children: [
          PropertyDescriptionItem(
            title: "Area",
            value: details?.area ?? "",
            icon: Assets.assetsSvgArea,
          ),
          PropertyDescriptionItem(
            title: AppStrings.floor,
            value: "${details?.officesFloors ?? ""}",
            icon: Assets.assetsSvgLevel,
          ),
          PropertyDescriptionItem(
            title: "Offices No.",
            value: "${details?.officesNum ?? ""}",
            icon: Assets.assetsSvgUsingFor2,
          ),
          PropertyDescriptionItem(
            title: AppStrings.finishing,
            value: details?.decoration ?? "",
            icon: Assets.assetsSvgFinishing,
          ),
          PropertyDescriptionItem(
            title: AppStrings.elevator,
            value: details?.elevator ?? "",
            icon: Assets.assetsSvgElevator,
          ),
          PropertyDescriptionItem(
            title: AppStrings.parking,
            value: "${details?.parking} / ${details?.parking}",
            icon: Assets.assetsSvgParking,
          ),
          PropertyDescriptionItem(
            title: "Street Width",
            value: "${details?.streetWidth ?? ""}",
            icon: Assets.assetsSvgStreetWidth,
          ),
          PropertyDescriptionItem(
            title: AppStrings.shop,
            value: "${details?.shop} / ${details?.shopsNumber}",
            icon: Assets.assetsSvgShop,
          ),
        ],
      );
}
