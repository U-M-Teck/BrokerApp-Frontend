import 'package:broker/app/config/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../generated/assets.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.grey ,
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: 
          Lottie.asset(Assets.assetsImagesLoadingImage),
        ),
      ),
    );
  }
}