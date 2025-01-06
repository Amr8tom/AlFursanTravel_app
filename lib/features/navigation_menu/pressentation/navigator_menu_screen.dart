import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/home/presentation/home_screen.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/widgets/custom_navigation_appBar.dart';
import 'package:fursan_travel_app/features/notifications/presentation/notification_screen.dart';
import '../../../common/widgets/custom_lottie_floating_avtion_bottom.dart';
import '../../../common/widgets/navigationbar/bottom_navigation_bar.dart';
import '../../service_locator/service_locator.dart';
import 'controller/navigation_cubit.dart';

class NavigatorMenuScreen extends StatelessWidget {
  const NavigatorMenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => serviceLocator<NavigationCubit>(),
      child: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          final controller = context.read<NavigationCubit>();
          return Scaffold(
            appBar: const CustomNavigationAppbar(),
            body: _buildScreen(controller.indx),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            floatingActionButton: const CustomLottieFloatingAvtionBottom(),
            bottomNavigationBar: const CustomBottomNavigationBar(),
          );
        },
      ),
    );
  }

  Widget _buildScreen(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const NotificationScreen();
      default:
        return const HomeScreen();
    }
  }
}
