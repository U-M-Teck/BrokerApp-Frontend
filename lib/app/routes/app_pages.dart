import 'package:broker/app/config/widgets/no_internet_screen.dart';
import 'package:broker/app/modules/add_property/bindings/add_property_binding.dart';
import 'package:broker/app/modules/add_property/views/add_property_view.dart';
import 'package:broker/app/modules/add_property/views/screens/apartment/add_apartment_stage_1.dart';
import 'package:broker/app/modules/add_property/views/screens/apartment/add_apartment_stage_2.dart';
import 'package:broker/app/modules/add_property/views/screens/apartment/add_apartment_stage_3.dart';
import 'package:broker/app/modules/add_property/views/screens/apartment/add_apartment_stage_4.dart';
import 'package:broker/app/modules/add_property/views/screens/apartment/add_apartment_stage_6.dart';
import 'package:broker/app/modules/add_property/views/screens/apartment/payment_stage.dart';
import 'package:broker/app/modules/add_property/views/screens/apartment/premium_payment_stage.dart';
import 'package:broker/app/modules/change_password/views/forget_password_view.dart';
import 'package:broker/app/modules/change_password/views/verify_forget_password_code_screen.dart';
import 'package:broker/app/modules/edit_property/views/screens/apartment/edit_payment_stage.dart';
import 'package:broker/app/modules/edit_property/views/screens/apartment/edit_premium_payment_stage.dart';
import 'package:broker/app/modules/home/views/drawer_screens/broker_points_screen.dart';
import 'package:broker/app/modules/home/views/drawer_screens/contact_us_screen.dart';
import 'package:broker/app/modules/home/views/drawer_screens/notification_screen.dart';
import 'package:broker/app/modules/home/views/drawer_screens/personal_information_screen.dart';
import 'package:broker/app/modules/home/views/drawer_screens/search_by_filter_screen.dart';
import 'package:broker/app/modules/layout/bindings/layout_binding.dart';
import 'package:broker/app/modules/layout/views/layout_view.dart';
import 'package:broker/app/modules/property_details/bindings/property_details_binding.dart';
import 'package:broker/app/modules/property_details/views/property_details_view.dart';
import 'package:get/get.dart';

import '../modules/add_property/views/screens/apartment/add_apartment_stage_5.dart';
import '../modules/change_password/bindings/change_password_binding.dart';
import '../modules/change_password/views/change_password_view.dart';
import '../modules/edit_property/bindings/edit_property_binding.dart';
import '../modules/edit_property/views/screens/apartment/edit_apartment_stage_1.dart';
import '../modules/edit_property/views/screens/apartment/edit_apartment_stage_2.dart';
import '../modules/edit_property/views/screens/apartment/edit_apartment_stage_3.dart';
import '../modules/edit_property/views/screens/apartment/edit_apartment_stage_4.dart';
import '../modules/edit_property/views/screens/apartment/edit_apartment_stage_5.dart';
import '../modules/edit_property/views/screens/apartment/edit_apartment_stage_6.dart';
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
import '../modules/sign_in/views/verification_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () =>  LayoutView(),
      binding: HomeBinding(),
    ),
        GetPage(
      name: _Paths.notification,
      page: () =>  NotificationScreen(),
      binding: BottomNavigationBinding()
    ),
    GetPage(
      name: _Paths.brokerPoints,
      page: () =>  BrokerPointsScreen(),
    ),
        GetPage(
      name: _Paths.noInternet,
      page: () =>  NoInternetScreen(),
    ),
     GetPage(
      name: _Paths.contactUs,
      page: () =>  ContactUsScreen(),
      binding: HomeBinding()
    ),
     GetPage(
      name: _Paths.userInformation,
      page: () =>  PersonalInformationScreen(),
    ),
       GetPage(
      name: _Paths.searchByFilter,
      page: () =>  SearchByFilterScreen(),
    ),
    //  GetPage(
    //         transition: Transition.noTransition,

    //   name: _Paths.search,
    //   page: () =>  SearchScreen(),
    // ),
    GetPage(
      name: _Paths.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.onBording,
      page: () => const OnBordingView(),
      binding: OnBordingBinding(),
    ),
    GetPage(
      name: _Paths.signIn,
      page: () =>  const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.verification,
      page: () => const VerificationView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.changePassword,
      page: () =>  const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.forgetPassword,
      page: () =>  const ForgetPasswordView(),
      binding: ChangePasswordBinding(),
    ), GetPage(
      name: _Paths.verifyForgetPassword,
      page: () =>  const VerifyForgetPasswordCodeScreen(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.createAccount,
      page: () => const CreateAccountView(),
      binding: SignUpBinding(),

    ),
    GetPage(
      name: _Paths.signUp,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.personalData,
      page: () => const PersonalDataScreen(),
      binding: SignUpBinding(),

    ),
     GetPage(
      name: _Paths.propertyDetails,
      page: () =>  const PropertyDetailsView(),
    bindings: [
       PropertyDetailsBinding(),
       BottomNavigationBinding()
    ]
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
      page: () =>  AddApartmentStage1(),
      binding: AddPropertyBinding()
    ),
     GetPage(
      name: _Paths.addApartmentStage2,
      page: () =>  AddApartmentStage2(),
      binding: AddPropertyBinding()

    ),
    GetPage(
      name: _Paths.addApartmentStage3,
      page: () =>  AddApartmentStage3(),
      binding: AddPropertyBinding()

    ),GetPage(
      name: _Paths.addApartmentStage4,
      page: () =>  AddApartmentStage4(),
      binding: AddPropertyBinding()

    ),
    GetPage(
      name: _Paths.addApartmentStage5,
      page: () =>  AddApartmentStage5(),
      binding: AddPropertyBinding()

    ),
    GetPage(
      name: _Paths.addApartmentStage6,
      page: () =>  AddApartmentStage6(),
      binding: AddPropertyBinding()

    ),
    GetPage(
      name: _Paths.premiumPaymentStage,
      page: () =>  PremiumPaymentStage(),
      binding: AddPropertyBinding()

    ),
        GetPage(
      name: _Paths.editPremiumPaymentStage,
      page: () =>  EditPremiumPaymentStage(),
      binding: EditPropertyBinding()

    ),
        GetPage(
      name: _Paths.editApartment,
      page: () =>  EditApartmentStage1(),
      binding: EditPropertyBinding()
    ),
     GetPage(
      name: _Paths.editApartmentStage2,
      page: () =>  EditApartmentStage2(),
      binding: EditPropertyBinding()

    ),
    GetPage(
      name: _Paths.editApartmentStage3,
      page: () =>  EditApartmentStage3(),
      binding: EditPropertyBinding()

    ),GetPage(
      name: _Paths.editApartmentStage4,
      page: () =>  EditApartmentStage4(),
      binding: EditPropertyBinding()

    ),
    GetPage(
      name: _Paths.editApartmentStage5,
      page: () =>  EditApartmentStage5(),
      binding: EditPropertyBinding()

    ),
    GetPage(
      name: _Paths.editApartmentStage6,
      page: () =>  EditApartmentStage6(),
      binding: EditPropertyBinding()

    ),
    GetPage(
      name: _Paths.editPaymentStage,
      page: () =>  EditPaymentStage(),
      binding: EditPropertyBinding()

    ),
    GetPage(
      name: _Paths.paymentStage,
      page: () =>  PaymentStage(),
      binding: AddPropertyBinding()

    ),

  ];
}
