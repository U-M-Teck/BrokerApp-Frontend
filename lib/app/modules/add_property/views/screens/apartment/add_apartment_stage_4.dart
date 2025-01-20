import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/config/widgets/app_scaffold.dart';
import 'package:broker/app/modules/home/views/widgets/selection_row_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../generated/assets.dart';
import '../../../../../config/utils/app_utils/app_strings.dart';
import '../../../../../config/widgets/app_image_view.dart';
import '../../../../../config/widgets/buttons/button_1.dart';
import '../../../../../config/widgets/buttons/outlined_app_button.dart';
import '../../../../../routes/app_pages.dart';
import '../../../controllers/add_apartment_controller.dart';

class AddApartmentStage4 extends StatelessWidget {
  final AddApartmentController controller = Get.put(AddApartmentController());
  AddApartmentStage4({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: Text(AppStrings.addApartment)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 32.h,
          children: [
            Text(AppStrings.propertyPricing, style: AppTextStyle.font18black600),
            TextFormField(
              controller: controller.priceController,
              decoration: InputDecoration(
                icon: AppImageView(
                  svgPath: Assets.assetsSvgPrice,
                  height: 16.h,
                  width: 16.w,
                ),
                prefixText: '\$ ',
                hintText: '200,000',
              ),
            ),
            controller.selectedContractType.value == 1
                ? Row(
                    children: [
                      AppImageView(
                        svgPath: Assets.assetsSvgRent,
                        height: 16.h,
                        width: 16.w,
                        color: AppColors.grey,
                      ),
                      16.ws,
                      Expanded(
                        child: SelectionRowWidget(
                          controller: controller.rent,
                          listLenght: 3,
                          labels: ['Monthly', 'Yearly', "Annual"],
                        ),
                      ),
                    ],
                  )
                : SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: OutlinedAppButton(
                  title: AppStrings.back,
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                )),
                11.ws,
                Expanded(
                    child: AppButton1(
                  title: AppStrings.next,
                  onPressed: () {
                    Get.toNamed(Routes.addApartmentStage5);
                  },
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
