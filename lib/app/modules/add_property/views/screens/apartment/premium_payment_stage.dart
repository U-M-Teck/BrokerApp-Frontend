import 'package:broker/app/config/style/app_color.dart';
import 'package:broker/app/config/style/app_text_styles.dart';
import 'package:broker/app/core/extentions/extention.dart';
import 'package:broker/app/modules/add_property/controllers/add_apartment_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/utils/app_utils/app_strings.dart';

class PremiumPaymentStage extends GetView<AddApartmentController> {
  const PremiumPaymentStage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.payment.tr),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        children: [
          // Duration Section
          Text(AppStrings.duration, style: AppTextStyle.font16black600),
          16.hs,
          Obx(() => Row(
                children: [
                  Expanded(
                    child: _DurationCard(
                      isSelected: controller.selectedDuration.value == 0,
                      duration: AppStrings.oneMonth,
                      price: "${controller.allDurations.value?.durations?[0].amount??0}EGP",
                      onTap: () => controller.selectedDuration.value = 0,
                    ),
                  ),
                  8.ws,
                  Expanded(
                    child: _DurationCard(
                      isSelected: controller.selectedDuration.value == 1,
                      duration: AppStrings.twoMonths,
                      price: "${controller.allDurations.value?.durations?[1].amount??0}EGP",
                      onTap: () => controller.selectedDuration.value = 1,
                    ),
                  ),
                  8.ws,
                  Expanded(
                    child: _DurationCard(
                      isSelected: controller.selectedDuration.value == 2,
                      duration: AppStrings.threeMonths,
                      price: "${controller.allDurations.value?.durations?[2].amount??0}EGP",
                      onTap: () => controller.selectedDuration.value = 2,
                    ),
                  ),
                ],
              )),

          24.hs,

          // Premium Features
          ListTile(
            leading: Icon(Icons.trending_up, color: AppColors.grey),
            title: Text(AppStrings.increaseInViewership,
                style: AppTextStyle.font14black400),
            dense: true,
          ),
          ListTile(
            leading: Icon(Icons.star, color: AppColors.grey),
            title: Text(AppStrings.appearsInGoldColor,
                style: AppTextStyle.font14black400),
            dense: true,
          ),
          ListTile(
            leading: Icon(Icons.visibility, color: AppColors.grey),
            title: Text(AppStrings.showsRemotely,
                style: AppTextStyle.font14black400),
            dense: true,
          ),

          24.hs,
          // Discount Code Section
          Text(AppStrings.discountCode, style: AppTextStyle.font16black600),
          8.hs,
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.discountCode,
                  decoration: InputDecoration(
                    hintText: AppStrings.enterDiscountCode,
                  ),
                ),
              ),
              16.ws,
              ElevatedButton(
                onPressed: () {
                  controller.checkCoupon();
                },
                child: Text(AppStrings.apply.tr),
              ),
            ],
          ),

          24.hs,
          // Summary Section
          Text(AppStrings.summary, style: AppTextStyle.font16black600),
          16.hs,
          Obx(() {
            final basePrice = controller.selectedDuration.value == 0
                ? (controller.allDurations.value?.durations?[0].amount ?? 0)
                : controller.selectedDuration.value == 1
                    ? (controller.allDurations.value?.durations?[1].amount ?? 0)
                    : (controller.allDurations.value?.durations?[2].amount ?? 0);

            final vat = ((basePrice) * 0.14).round();
            final discount = controller.discountCode.text.isNotEmpty ? controller.discount.value : 0;
            final total = basePrice + vat - (discount > 0 ? (basePrice * discount.toInt() / 100).round() : 0);

            return Column(
              children: [
                _SummaryItem('$basePrice EGP (${AppStrings.duration.tr})',
                    '$basePrice EGP'),
                _SummaryItem('VAT (14%)', '+$vat EGP'),
                if (controller.discount.value!=0.0)
                  _SummaryItem(AppStrings.discountCode, '-${discount.toInt()} %'),
                Divider(),
                _SummaryItem(AppStrings.totalAmount, '$total EGP', isTotal: true),
              ],
            );
          }),

          24.hs,
          // Continue Button
          SizedBox(
            width: double.infinity,
            height: 50.h,
            child: Obx(() {
              final total = _calculateTotal(
                  controller.selectedDuration.value,
                  controller.discountCode.text.isNotEmpty);

              return ElevatedButton(
                onPressed: () => controller.getPaymentUrl(total.toString()),
                child: Text('${AppStrings.continueToPay.tr} $total EGP'),
              );
            }),
          ),
        ],
      ),
    );
  }

  double _calculateTotal(int duration, bool hasDiscount) {
    final basePrice = duration == 0
        ? (controller.allDurations.value?.durations?[0].amount ?? 0)
        : duration == 1
            ? (controller.allDurations.value?.durations?[1].amount ?? 0)
            : (controller.allDurations.value?.durations?[2].amount ?? 0);
  final vat = ((basePrice) * 0.14).round();
            final discount = controller.discountCode.text.isNotEmpty ? controller.discount.value : 0;
            return basePrice + vat - (discount > 0 ? (basePrice * discount.toInt() / 100).round() : 0);

  }
}

class _DurationCard extends StatelessWidget {
  final bool isSelected;
  final String duration;
  final String price;
  final VoidCallback onTap;

  const _DurationCard({
    required this.isSelected,
    required this.duration,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColors.primary : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? AppColors.primary.withAlpha(75) : Colors.white,
        ),
        child: Column(
          children: [
            Text(duration, style: AppTextStyle.font14black400),
            4.hs,
            Text(price, style: AppTextStyle.font16black600),
          ],
        ),
      ),
    );
  }
}
class _SummaryItem extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const _SummaryItem(this.label, this.value, {this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: isTotal
                  ? AppTextStyle.font16black600
                  : AppTextStyle.font14black400),
          Text(value,
              style: isTotal
                  ? AppTextStyle.font16black600
                  : AppTextStyle.font14black400),
        ],
      ),
    );
  }
}
