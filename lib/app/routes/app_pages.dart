import 'package:broker/app/modules/home/views/drawer_screens/broker_points_screen.dart';
import 'package:broker/app/modules/home/views/drawer_screens/contact_us_screen.dart';
import 'package:broker/app/modules/home/views/drawer_screens/notification_screen.dart';
import 'package:broker/app/modules/home/views/drawer_screens/search_by_filter_screen.dart';
import 'package:broker/app/modules/layout/views/layout_view.dart';
import 'package:get/get.dart';

import '../modules/change_password/bindings/change_password_binding.dart';
import '../modules/change_password/views/change_password_view.dart';
import '../modules/create_account/bindings/create_account_binding.dart';
import '../modules/create_account/views/create_account_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/on_bording/bindings/on_bording_binding.dart';
import '../modules/on_bording/views/on_bording_view.dart';
import '../modules/personal_data/bindings/personal_data_binding.dart';
import '../modules/personal_data/views/personal_data_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/verification/bindings/verification_binding.dart';
import '../modules/verification/views/verification_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  LayoutView(),
      binding: HomeBinding(),
    ),
        GetPage(
      name: _Paths.notification,
      page: () =>  NotificationScreen(),
    ),
    GetPage(
      name: _Paths.brokerPoints,
      page: () =>  BrokerPointsScreen(),
    ),
     GetPage(
      name: _Paths.contactUs,
      page: () =>  ContactUsScreen(),
    ),
       GetPage(
      name: _Paths.searchByFilter,
      page: () =>  SearchByFilterScreen(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ON_BORDING,
      page: () => const OnBordingView(),
      binding: OnBordingBinding(),
      children: [
        GetPage(
          name: _Paths.ON_BORDING,
          page: () => const OnBordingView(),
          binding: OnBordingBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () =>  SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION,
      page: () => const VerificationView(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () =>  ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ACCOUNT,
      page: () => const CreateAccountView(),
      binding: CreateAccountBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.PERSONAL_DATA,
      page: () => const PersonalDataView(),
      binding: PersonalDataBinding(),
    ),
  ];
}
