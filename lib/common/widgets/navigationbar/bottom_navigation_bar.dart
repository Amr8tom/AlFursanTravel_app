import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/controller/navigation_cubit.dart';
import 'package:iconsax/iconsax.dart';
import '../../../generated/l10n.dart';
import '../../../utils/constants/colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Widget> _items = [
      Column(
        children: [
          const Icon(Iconsax.home, color: ColorRes.primary),
          Text(
            S.current.home,
            style: const TextStyle(fontSize: 12, color: ColorRes.primary),
          ),
        ],
      ),
      Column(
        children: [
          const Icon(Iconsax.notification, color: ColorRes.primary),
          Text(
            S.current.notifications,
            style: const TextStyle(fontSize: 12, color: ColorRes.primary),
          ),
        ],
      ),
      Column(
        children: [
          const Icon(Iconsax.heart, color: ColorRes.primary),
          Text(
            S.current.favorite,
            style: const TextStyle(fontSize: 12, color: ColorRes.primary),
          ),
        ],
      ),
      Column(
        children: [
          const Icon(
            Iconsax.profile_2user,
            color: ColorRes.primary,
          ),
          Text(
            S.current.profileInfo,
            style: const TextStyle(fontSize: 12, color: ColorRes.primary),
          ),
        ],
      ),
    ];
    return Directionality(
      textDirection: TextDirection.ltr,
      child: AnimatedBottomNavigationBar.builder(
        itemCount: _items.length,
        height: kToolbarHeight * .9,
        tabBuilder: (int index, bool isActive) {
          return _items[index];
        },
        activeIndex: context.read<NavigationCubit>().indx,
        gapLocation: GapLocation.center,
        onTap: (index) {
          context.read<NavigationCubit>().chnageIndx(index);
        },
      ),
    );
  }
}
