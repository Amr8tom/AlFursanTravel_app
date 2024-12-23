import 'package:flutter/material.dart';
import 'package:fursan_travel_app/features/authentication/presentation/login/login_screen.dart';
import 'package:fursan_travel_app/features/tours/presentation/certain_category_screen.dart';
import 'package:fursan_travel_app/features/language/select_language_screen.dart';
import 'package:fursan_travel_app/features/search/presentation/search_screen.dart';
import 'package:fursan_travel_app/features/tours/presentation/make_toure_reservation_screen.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:page_transition/page_transition.dart';

import '../features/authentication/presentation/singUp/signup_screen.dart';
import '../features/contact_us/persentation/contact_us_screen.dart';
import '../features/navigation_menu/pressentation/navigator_menu_screen.dart';
import '../features/profile/presentation/profile_screen.dart';
import '../features/tours/presentation/all_tours_screen.dart';
import '../features/tours/presentation/tour_details_screen.dart';
import '../features/visas/presentation/all_visas_screen.dart';
import '../features/visas/presentation/make_reservation_screen.dart';
import '../features/visas/presentation/visa_details_screen.dart';

class RouteGenerator {
  /// generate Route
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case DRoutesName.langRoute:
        return PageTransition(
            child: const SelectLanguageScreen(),
            type: PageTransitionType.fade,
            settings: settings);

      /// navigation
      case DRoutesName.navigationMenuRoute:
        return PageTransition(
            child: const NavigatorMenuScreen(),
            type: PageTransitionType.fade,
            settings: settings);

      /// contact Us
      case DRoutesName.contactUs:
        return PageTransition(
            child: const ContactUsScreen(),
            type: PageTransitionType.fade,
            settings: settings);

      /// visaDetails
      case DRoutesName.visaDetailsRoute:
        final String slugId = settings.arguments as String;
        return PageTransition(
            child: VisaDetailsScreen(slugId: slugId),
            type: PageTransitionType.fade,
            settings: settings);

      /// visaDetails
      case DRoutesName.makeVisaReservationRoute:
        final String visaId = settings.arguments as String;
        return PageTransition(
            child: MakeReservationScreen(visaId: visaId),
            type: PageTransitionType.fade,
            settings: settings);

      /// certain category Screen
      case DRoutesName.certainCategoryRoute:
        final Map<String, dynamic> arg =
            settings.arguments as Map<String, dynamic>;
        return PageTransition(
            child: CertainCategoryScreen(arg: arg),
            type: PageTransitionType.fade,
            settings: settings);

      /// all Tours Screen
      case DRoutesName.allToursRoute:
        return PageTransition(
            child: const AllToursScreen(),
            type: PageTransitionType.fade,
            settings: settings);

      /// make tour reservation Screen
      case DRoutesName.makeTourReservationRoute:
        return PageTransition(
            child: const MakeToureReservationScreen(),
            type: PageTransitionType.fade,
            settings: settings);

      /// details Tours Screen
      case DRoutesName.tourDetailsRoute:
        final String slugId = settings.arguments as String;
        return PageTransition(
            child: TourDetailsScreen(
              slugID: slugId,
            ),
            type: PageTransitionType.fade,
            settings: settings);

      /// all Visas Screen
      case DRoutesName.AllVisasScreen:
        return PageTransition(
            child: const AllVisasScreen(),
            type: PageTransitionType.fade,
            settings: settings);

      /// when no routes

      case DRoutesName.loginRoute:
        return PageTransition(
            child: const LoginScreen(),
            type: PageTransitionType.fade,
            settings: settings);

      /// search Rourte
      case DRoutesName.searchRoute:
        return PageTransition(
            child: const SearchScreen(),
            type: PageTransitionType.fade,
            settings: settings);

      /// search Rourte
      case DRoutesName.signupRoute:
        return PageTransition(
            child: const DSignupScreen(),
            type: PageTransitionType.fade,
            settings: settings);

      /// search Rourte
      case DRoutesName.profileInfoRoute:
        return PageTransition(
            child: const ProfileScreen(),
            type: PageTransitionType.fade,
            settings: settings);

      /// when no routes
      default:
        return unDefinedRoute();
    }
  }

  /// Un Defined Route
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(
            '',
          ),
        ),
        body: Center(
          child: const Text(
            'no data',
          ),
        ),
      ),
    );
  }
}
