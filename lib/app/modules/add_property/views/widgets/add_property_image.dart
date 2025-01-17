import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/widgets/app_image_view.dart';
import '../../controllers/add_apartment_controller.dart';

class AddPropertyImage extends StatelessWidget {
  final int index;
  final AddApartmentController controller;
  const AddPropertyImage({
    super.key,
    required this.index, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Stack(
        children: [
          InkWell(
            onTap: () {
              if (controller.imageFiles.length < 3) {
                controller.addImages();
              }
            },
            child: Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
              ),
              child: index < controller.imageFiles.length
                  ? AppImageView(
                      radius: BorderRadius.circular(12),
                      file: controller.imageFiles[index],
                      fit: BoxFit.fill,
                    )
                  : Icon(Icons.add),
            ),
          ),
          if (index < controller.imageFiles.length)
            Positioned(
              bottom: 0,
              left: 1,
              child: InkWell(
                onTap:() {
                      controller.removeImage(index);
                    } ,
                child: Container(
                  margin:EdgeInsets.symmetric(horizontal: 4.w,vertical: 4.h),
                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 4.h),
                  height: 24.h,
                  width: 24.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),),
                  child:Icon(Icons.delete_outline, color: Colors.red,size: 16.h,),
                ),
              ),
            ),
        ],
      );
    });
  }
}
