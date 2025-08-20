import 'package:broker/app/config/widgets/pop_ups/under_review.dart';
import 'package:broker/app/modules/edit_property/controllers/edit_apartment_controller.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../../config/style/app_color.dart';
import '../../../../../config/utils/app_utils/app_strings.dart';
import '../../../../../config/widgets/buttons/button_1.dart';

class EditPaymobScreen extends StatelessWidget {
  final String paymentUrl;
  const EditPaymobScreen({super.key, required this.paymentUrl});

  @override
  Widget build(BuildContext context) {
    late final WebViewController controller;
    controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setNavigationDelegate(
            NavigationDelegate(
              onNavigationRequest: (NavigationRequest request) {
                if (request.url.contains('success=true')) {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder:
                        (s) => UnderReview(
                          button: Obx(() {
                            return AppButton1(
                              leading:
                                  Get.find<EditApartmentController>()
                                              .editAdvertisementLoading
                                              .value ==
                                          true
                                      ? CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                      : SizedBox.shrink(),
                              title:
                                  Get.find<EditApartmentController>()
                                              .editAdvertisementLoading
                                              .value ==
                                          true
                                      ? ""
                                      : AppStrings.done,
                              onPressed: () {
                              Get.find<EditApartmentController>()
                                              .editAdvertisementLoading
                                              .value ==
                                          true
                                      ? null
                                      :  Get.find<EditApartmentController>()
                                    .editAdvertisement();
                              },
                            );
                          }),
                          isLoading:
                              Get.find<EditApartmentController>()
                                  .editAdvertisementLoading
                                  .value,
                        ),
                  );
                  return NavigationDecision.prevent;
                } else if (request.url.contains('success=false')) {
                  Get.snackbar("Payment Failed", "Failed",          colorText: AppColors.primary
);
                  Get.offAllNamed(Routes.home);
                  return NavigationDecision.prevent;
                }
                return NavigationDecision.navigate;
              },
              onPageFinished: (String url) {
                controller.runJavaScript('''
              document.forms[0]?.addEventListener('submit', function() {
                window.parent.postMessage('formSubmitted', '*');
              });
            ''');
              },
            ),
          )
          ..enableZoom(false)
          ..loadRequest(Uri.parse(paymentUrl));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay with PayMob"),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(child: WebViewWidget(controller: controller)),
    );
  }
}
