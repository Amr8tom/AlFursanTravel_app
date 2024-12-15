import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/favourites/presentation/favourites_screen.dart';
import 'package:fursan_travel_app/features/home/presentation/home_screen.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/widgets/custom_navigation_appBar.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/widgets/custom_profile_app_bar.dart';
import 'package:fursan_travel_app/features/notifications/presentation/notification_screen.dart';
import 'package:fursan_travel_app/features/profile/presentation/profile_screen.dart';
import '../../../common/widgets/custom_lottie_floating_avtion_bottom.dart';
import '../../../common/widgets/navigationbar/bottom_navigation_bar.dart';
import 'controller/navigation_cubit.dart';

class NavigatorMenuScreen extends StatelessWidget {
  const NavigatorMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigationCubit, NavigationState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final controller = context.read<NavigationCubit>();
        return Scaffold(
          appBar: controller.indx == 3
              ? const CustomProfileAppBar()
              : const CustomNavigationAppbar(),
          body: _buildScreen(controller.indx),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: const CustomLottieFloatingAvtionBottom(),
          bottomNavigationBar: const CustomBottomNavigationBar(),
        );
      },
    );
  }

  Widget _buildScreen(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const NotificationScreen();
      case 2:
        return const FavouritesScreen();
      case 3:
        return const ProfileScreen();
      default:
        return HomeScreen();
    }
  }
}
