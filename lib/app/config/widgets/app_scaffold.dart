import 'package:broker/app/config/widgets/app_image_view.dart';
import 'package:broker/generated/assets.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  const AppScaffold({super.key, required this.body, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AppImageView(svgPath: Assets.assetsSvgGroup),
          body,
        ],
      ),
    );
  }
}