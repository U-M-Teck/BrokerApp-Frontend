import 'package:broker/app/modules/add_property/bindings/add_property_binding.dart';
import 'package:broker/app/modules/add_property/views/add_property_view.dart';
import 'package:broker/app/modules/add_property/views/screens/apartment/add_apartment.dart';
import 'package:broker/app/modules/add_property/views/screens/apartment/add_apartment_stage_2.dart';
import 'package:broker/app/modules/add_property/views/screens/apartment/add_apartment_stage_3.dart';
import 'package:broker/app/modules/add_property/views/screens/apartment/add_apartment_stage_4.dart';
import 'package:broker/app/modules/change_password/views/forget_password_view.dart';
import 'package:broker/app/modules/change_password/views/verify_forget_password_code_screen.dart';
import 'package:broker/app/modules/home/views/drawer_screens/broker_points_screen.dart';
import 'package:broker/app/modules/home/views/drawer_screens/contact_us_screen.dart';
import 'package:broker/app/modules/home/views/drawer_screens/notification_screen.dart';
import 'package:broker/app/modules/home/views/drawer_screens/search_by_filter_screen.dart';
import 'package:broker/app/modules/home/views/drawer_screens/search_screen.dart';
import 'package:broker/app/modules/layout/views/layout_view.dart';
import 'package:broker/app/modules/property_details/bindings/property_details_binding.dart';
import 'package:broker/app/modules/property_details/views/property_details_view.dart';
import 'package:get/get.dart';

import '../modules/add_property/views/screens/apartment/add_apartment_stage_5.dart';
import '../modules/change_password/bindings/change_password_binding.dart';
import '../modules/change_password/views/change_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/on_bording/bindings/on_bording_binding.dart';
import '../modules/on_bording/views/on_bording_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/create_account_view.dart';
import '../modules/sign_up/views/pesonal_data_screen.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/sign_up/views/verification_sign_up_screen.dart';
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
            transition: Transition.noTransition,

      name: _Paths.search,
      page: () =>  SearchScreen(),
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
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () =>  const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION,
      page: () => const VerificationView(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () =>  const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.Forget_PASSWORD,
      page: () =>  const ForgetPasswordView(),
      binding: ChangePasswordBinding(),
    ), GetPage(
      name: _Paths.Verify_Forget_PASSWORD,
      page: () =>  const VerifyForgetPasswordCodeScreen(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ACCOUNT,
      page: () => const CreateAccountView(),
      binding: SignUpBinding(),

    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.PERSONAL_DATA,
      page: () => const PersonalDataScreen(),
      binding: SignUpBinding(),

    ),
     GetPage(
      name: _Paths.propertyDetails,
      page: () =>  const PropertyDetailsView(),
      binding: PropertyDetailsBinding(),
    ),
    GetPage(
      name: _Paths.signUpVerification,
      page: () =>  const VerificationSignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.addProperty,
      page: () => const AddPropertyView(),
      binding: AddPropertyBinding(),
    ),
    GetPage(
      name: _Paths.addApartment,
      page: () =>  AddApartment(),
    ),
     GetPage(
      name: _Paths.addApartmentStage2,
      page: () =>  AddApartmentStage2(),
    ),
    GetPage(
      name: _Paths.addApartmentStage3,
      page: () =>  AddApartmentStage3(),
    ),GetPage(
      name: _Paths.addApartmentStage4,
      page: () =>  AddApartmentStage4(),
    ),
    GetPage(
      name: _Paths.addApartmentStage5,
      page: () =>  AddApartmentStage5(),
    ),
  ];
}
