import 'package:flutter/material.dart';
import 'package:fursan_travel_app/features/authentication/presentation/login/login_screen.dart';
import 'package:fursan_travel_app/features/tours/presentation/certain_category_screen.dart';
import 'package:fursan_travel_app/features/language/select_language_screen.dart';
import 'package:fursan_travel_app/features/search/presentation/search_screen.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:page_transition/page_transition.dart';

import '../features/authentication/presentation/singUp/signup_screen.dart';
import '../features/navigation_menu/pressentation/navigator_menu_screen.dart';
import '../features/profile/presentation/profile_screen.dart';
import '../features/tours/presentation/all_tours_screen.dart';

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

      /// certain category Screen
      case DRoutesName.certainCategoryRoute:
        final Map<String, dynamic> arg =
            settings.arguments as Map<String, dynamic>;
        return PageTransition(
            child: CertainCategoryScreen(arg: arg),
            type: PageTransitionType.fade,
            settings: settings);

      /// all Tours Screen
      case DRoutesName.allToursScreen:
        return PageTransition(
            child: AllToursScreen(),
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
          title: const Text(
            '',
          ),
        ),
        body: const Center(
          child: Text(
            '',
          ),
        ),
      ),
    );
  }
}
