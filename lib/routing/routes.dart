// class RouteGenerator {
//   static Route<dynamic> getRoute(RouteSettings settings) {
//     switch (settings.name) {
//       /// *************************************** Start No Connection *************************************** \\\
//       // case DRoutesName.noConnectionRoute:
//       //   return PageTransition(
//       //     child: const NoConnectionScreen(),
//       //     type: PageTransitionType.rightToLeftWithFade,
//       //     settings: settings,
//       // //     reverseDuration: const Duration(milliseconds: 300),
//       //   );
//
//       /// *************************************** End No Connection *************************************** \\\
//
//       /// *************************************** Start Authentication *************************************** \\\
//       case DRoutesName.splashRoute:
//         return PageTransition(
//           child: const SplashScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.test:
//         return PageTransition(
//           child: GifImages(
//             url: '',
//           ),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.onBoardingRoute:
//         return PageTransition(
//           child: OnBoardingScreen(),
//           type: PageTransitionType.fade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.onBoardingRouteTwo:
//         return PageTransition(
//           // child: index(),
//           child: OnBoardingScreen(),
//           type: PageTransitionType.fade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.loginRoute:
//         return PageTransition(
//           child: const LoginScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.forgetPasswordRoute:
//         return PageTransition(
//           child: const ForgetPassword(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.verifyCodeRoute:
//         String phone = settings.arguments as String;
//         return PageTransition(
//           child: SendOTPScreen(phone: phone),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.resetPasswordRoute:
//         return PageTransition(
//           child: const ResetPasswordScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.signupRoute:
//         return PageTransition(
//           child: const SignupScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.webViewRoute:
//         String url = settings.arguments as String;
//         return PageTransition(
//           child: WebViewPage(url: url),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.detailsProductRoute:
//         final Map<String, dynamic> map =
//             settings.arguments as Map<String, dynamic>;
//         return PageTransition(
//           child: DetailsProduct(
//             map: map,
//           ),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.walletRoute:
//         return PageTransition(
//           child: const WalletScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.followOrderRoute:
//         final String orderID = settings.arguments as String;
//         return PageTransition(
//           child: FollowOrderScreen(orderID: orderID),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.orderDetailsRoute:
//         final Map<String, dynamic> args =
//             settings.arguments as Map<String, dynamic>;
//         return PageTransition(
//           child: OrderDetailsScreen(args: args),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.certainCategoryRoute:
//         final Map<String, dynamic> map =
//             settings.arguments as Map<String, dynamic>;
//         return PageTransition(
//           child: certainCategoryScreen(map: map),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.categoriesRoute:
//         return PageTransition(
//           child: CategoryScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.myAdsRoute:
//         return PageTransition(
//           child: const MyAdsScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.customerAdsRoute:
//         return PageTransition(
//           child: const CustomerAdsScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.paymentInInstallments6MonthsRoute:
//         return PageTransition(
//           child: const PaymentInInstallments6Months(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.paymentInInstallments12MonthsRoute:
//         return PageTransition(
//           child: const PaymentInInstallments12Months(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.paymentInInstallmentsValu:
//         return PageTransition(
//           child: const ValuInstallments(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.paymentInInstallmentsSouhoola:
//         return PageTransition(
//           child: const SouhoolaIntallments(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.paymentInInstallmentsMain:
//         return PageTransition(
//           child: const MainInstallmentsScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.myOrderRoute:
//         return PageTransition(
//           child: const MyOrderScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.myNoteBookRoute:
//         return PageTransition(
//           child: ShortComingScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.expireProductRoute:
//         return PageTransition(
//           child: ExpireProductsScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.favoriteRoute:
//         return PageTransition(
//           child: const FavoriteScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.fawaterkRoute:
//         return PageTransition(
//           child: const FawryPaymentScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.mobileWalletRoute:
//         return PageTransition(
//           child: const MobileWalletScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.returnRequestRoute:
//         return PageTransition(
//           child: ReturnRequestScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.returnRequestDeatilsRoute:
//         final String orderID = settings.arguments as String;
//         return PageTransition(
//           child: ReturnRequestDetailsScreen(
//             orderID: orderID,
//           ),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.medicalServiceRoute:
//         return PageTransition(
//           child: const MedicalServiceScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       /// *************************************** End Authentication *************************************** \\\
//
//       /// *************************************** Start Navigation Bar *************************************** \\\
//       case DRoutesName.navigationMenuRoute:
//         return PageTransition(
//           child: const NavigationMenu(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.giftRoute:
//         return PageTransition(
//           child: const GiftScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.searchRoute:
//         Map<String, dynamic>? arguments =
//             settings.arguments as Map<String, dynamic>?;
//         return PageTransition(
//           child: SearchScreen(
//               companyName: arguments?['name'], companyID: arguments?['ID']),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.rechargeWalletRoute:
//         return PageTransition(
//           child: RechargeWalletScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.CartRoute:
//         return PageTransition(
//           child: const CartScreen(),
//           type: PageTransitionType.leftToRightWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.settingsRoute:
//         return PageTransition(
//           child: const SettingsScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.profileInfoRoute:
//         return PageTransition(
//           child: ProfileInfoScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.pharmacyInfoRoute:
//         return PageTransition(
//           child: const PharmacyInfoScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.addNewProductRoute:
//         final Map<String, dynamic> map = settings.arguments
//             as Map<String, dynamic>; // Safely cast to nullable bool
//         return PageTransition(
//           child: AddNewProductScreen(map: map),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.shippingInformationRoute:
//         return PageTransition(
//           // child:  const ShippingInformationScreen(),
//           child: const PharmacyInfoScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       // case DRoutesName.addNewAddressFormRoute:
//       //   return PageTransition(
//       //     // child:  const AddNewAddressFormScreen(),
//       //     child: const PharmacyInfoScreen(),
//       //     type: PageTransitionType.rightToLeftWithFade,
//       //     settings: settings,
//       // //     reverseDuration: const Duration(milliseconds: 300),
//       //   );
//
//       case DRoutesName.paymentRoute:
//         return PageTransition(
//           child: PaymentScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.OtherTypesRoute:
//         return PageTransition(
//           child: OtherTypesScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.DelayedCashRoute:
//         return PageTransition(
//           child: DelayedCashScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.walletPaymentRoute:
//         return PageTransition(
//           child: WalletPaymentScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       case DRoutesName.remotePaymentRoute:
//         return PageTransition(
//           child: RemotePaymentScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.CreditCardPaymentRoute:
//         return PageTransition(
//           child: CreditCardPaymentScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.CashOnDeliveryRoute:
//         return PageTransition(
//           child: CashOnDeliveryScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.companyDetailsRoute:
//         final Map<String, dynamic> map =
//             settings.arguments as Map<String, dynamic>;
//
//         return PageTransition(
//           child: CompanyDetailsScreen(map: map),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.addNewAddressFormRoute:
//         Map<String, dynamic>? args =
//             settings.arguments as Map<String, dynamic>?;
//         String ID = args?['ID'];
//         bool isUpdate = args?['isUpdate'];
//         return PageTransition(
//           child: AddressFormScreen(ID: ID, isUpdate: isUpdate),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//       // case DRoutesName.addressRoute:
//       //   final Map<String, dynamic> map =
//       //       settings.arguments as Map<String, dynamic>;
//       //   return PageTransition(
//       //     child: AddressScreen(),
//       //     type: PageTransitionType.rightToLeftWithFade,
//       //     settings: settings,
//       // //     reverseDuration: const Duration(milliseconds: 300),
//       //   );
//       case DRoutesName.AddressListRoute:
//         return PageTransition(
//           child: AddressListScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       case DRoutesName.addNewProductOrAdsRoute:
//         return PageTransition(
//           child: const AddProductOrAdsScreen(),
//           type: PageTransitionType.rightToLeftWithFade,
//           settings: settings,
//           // reverseDuration: const Duration(milliseconds: 300),
//         );
//
//       default:
//         return unDefinedRoute();
//     }
//   }
//
//   /// Un Defined Route
//   static Route<dynamic> unDefinedRoute() {
//     return MaterialPageRoute(
//       builder: (_) => Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             '',
//           ),
//         ),
//         body: const Center(
//           child: Text(
//             '',
//           ),
//         ),
//       ),
//     );
//   }
// }
