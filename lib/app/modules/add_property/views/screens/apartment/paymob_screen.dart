import 'package:broker/app/config/widgets/pop_ups/under_review.dart';
import 'package:broker/app/modules/add_property/controllers/add_apartment_controller.dart';
import 'package:broker/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../../config/utils/app_utils/app_strings.dart';
import '../../../../../config/widgets/buttons/button_1.dart';

class PaymentScreen extends StatelessWidget {
  final String paymentUrl;
  const PaymentScreen({super.key, required this.paymentUrl});

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
                                  Get.find<AddApartmentController>()
                                              .createAdvertisementLoading
                                              .value ==
                                          true
                                      ? CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                      : SizedBox.shrink(),
                              title:Get.find<AddApartmentController>()
                                              .createAdvertisementLoading
                                              .value ==
                                          true
                                      ?"": AppStrings.done,
                              onPressed: () {
                                Get.find<AddApartmentController>()
                                    .createAdvertisement();
                              },
                            );
                          }), isLoading: Get.find<AddApartmentController>()
                                              .createAdvertisementLoading
                                              .value,
                        ),
                  );
                  return NavigationDecision.prevent;
                } else if (request.url.contains('success=false')) {
                  Get.snackbar("Payment Failed", "Failed");
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
        title: Text(AppStrings.payWithPayMob),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(child: WebViewWidget(controller: controller)),
    );
  }
}
