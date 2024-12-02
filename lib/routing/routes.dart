import 'package:flutter/material.dart';
import 'package:fursan_travel_app/features/language/select_language_screen.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:page_transition/page_transition.dart';

import '../features/navigation_menu/navigator_menu_screen.dart';

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

      /// when no routes

      case DRoutesName.navigationMenuRoute:
        return PageTransition(
            child: const NavigatorMenuScreen(),
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
