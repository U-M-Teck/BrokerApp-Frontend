import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/app/modules/layout/data/model/get_adv_details_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../controllers/property_details_controller.dart';

class PropertyImages extends GetView<PropertyDetailsController> {
  final Details? images;
  const PropertyImages(this.images, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            FractionallySizedBox(
              widthFactor: 1.1.w,
              child: CarouselSlider.builder(
                itemCount: images?.photos?.length ?? 0,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  aspectRatio: 16 / 9,
                  onPageChanged: (index, reason) {
                    controller.updateSliderValue(index.toDouble());
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  final path = images?.photos?[index] ?? '';
                  return GestureDetector(
                    onTap: () => _openFullScreenGallery(context, index),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 8.0.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: AppImageView(url: path, fit: BoxFit.cover),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 10.0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    images?.photos?.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap:
                            () => controller.updateSliderValue(
                              entry.key.toDouble(),
                            ),
                        child: Obx(
                          () => Container(
                            width: 8.0.w,
                            height: 8.0.h,
                            margin: EdgeInsets.symmetric(horizontal: 4.0.w),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  controller.sliderValue.value ==
                                          entry.key.toDouble()
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey.shade400,
                            ),
                          ),
                        ),
                      );
                    }).toList() ??
                    [],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _openFullScreenGallery(BuildContext context, int initialIndex) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => FullScreenGallery(
              images: images?.photos ?? [],
              initialIndex: initialIndex,
            ),
      ),
    );
  }
}

class FullScreenGallery extends StatelessWidget {
  final List<String> images;
  final int initialIndex;

  const FullScreenGallery({
    super.key,
    required this.images,
    required this.initialIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: PhotoViewGallery.builder(
        itemCount: images.length,
        pageController: PageController(initialPage: initialIndex),
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(images[index]),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2,
          );
        },
        scrollPhysics: BouncingScrollPhysics(),
        backgroundDecoration: BoxDecoration(color: Colors.white),
      ),
    );
  }
}
