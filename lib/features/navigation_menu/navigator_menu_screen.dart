import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/features/favourites/presentation/favourites_screen.dart';
import 'package:fursan_travel_app/features/home/presentation/home_screen.dart';
import 'package:fursan_travel_app/features/notifications/presentation/notification_screen.dart';
import 'package:fursan_travel_app/features/profile/presentation/profile_screen.dart';

import '../../common/widgets/custom_lottie_floating_avtion_bottom.dart';
import '../../common/widgets/navigationbar/bottom_navigation_bar.dart';
import '../search/presentation/search_screen.dart';

class NavigatorMenuScreen extends StatelessWidget {
  const NavigatorMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        showBackArrow: false,
      ),
      body: _buildScreen(1),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: const CustomLottieFloatingAvtionBottom(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }

  Widget _buildScreen(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const NotificationScreen();
      case 2:
        return const SearchScreen();
      case 3:
        return const FavouritesScreen();
      case 4:
        return const ProfileScreen();
      default:
        return HomeScreen();
    }
  }
}
