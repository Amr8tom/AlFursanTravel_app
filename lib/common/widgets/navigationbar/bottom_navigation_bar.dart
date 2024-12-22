import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/controller/navigation_cubit.dart';
import 'package:iconsax/iconsax.dart';
import '../../../generated/l10n.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/contancts.dart';
import '../../../utils/constants/image_strings.dart';

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
      InkWell(
        onTap: () async {
          await Contacts.makePhoneCall("+201024264021");
        },
        child: Column(
          children: [
            Icon(Iconsax.call, color: ColorRes.primary),
            Text(
              S.current.callUs,
              style: const TextStyle(fontSize: 12, color: ColorRes.primary),
            ),
          ],
        ),
      ),
      InkWell(
        onTap: () {
          Contacts.openWhatsAppChat(
              num: "201024264021", message: S.current.whatisNewOffers);
        },
        child: Column(
          children: [
            SvgPicture.asset(
              AssetRes.whatsappIconWhite,
              color: ColorRes.primary,
              height: 26.sp,
            ),
            Text(
              S.current.whatsApp,
              style: const TextStyle(fontSize: 12, color: ColorRes.primary),
            ),
          ],
        ),
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
