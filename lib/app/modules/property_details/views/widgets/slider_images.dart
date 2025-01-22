import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/property_details_controller.dart';

class PropertyImages extends GetView<PropertyDetailsController> {
  const PropertyImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Obx(
           () {
            return Stack(
              children: [
                 FractionallySizedBox(
                   widthFactor: 1.1.w,
                   child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      aspectRatio: 16 / 9,
                      onPageChanged: (index, reason) {
                        controller.updateSliderValue(index.toDouble());
                      },
                    ),
                    items:  controller.imagePaths.map((path) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin:  EdgeInsets.symmetric(horizontal: 8.0.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                path,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                                   ),
                 ),
                Positioned(
                  bottom: 10.0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: controller.imagePaths.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => controller.updateSliderValue(entry.key.toDouble()),
                        child: Container(
                          width: 8.0.w,
                          height: 8.0.h,
                          margin:  EdgeInsets.symmetric(horizontal: 4.0.w),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: controller.sliderValue.value == entry.key.toDouble()
                                ? Theme.of(context).primaryColor
                                : Colors.grey.shade400,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            );
          }
        ),
      ],
    );
  }
}
