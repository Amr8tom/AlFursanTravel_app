import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/controller/navigation_cubit.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

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
          Icon(Iconsax.home,size: AppSizes.iconMd, color: ColorRes.primary),
          Text(
            S.current.home,
            style:  TextStyle(fontSize:AppSizes.fontSizeSm/1.2, color: ColorRes.primary),
          ),
        ],
      ),
      Column(
        children: [
          Icon(Iconsax.notification,size: AppSizes.iconMd, color: ColorRes.primary),
          Text(
            S.current.notifications,
            style:  TextStyle(fontSize:AppSizes.fontSizeSm/1.2, color: ColorRes.primary),
          ),
        ],
      ),
      InkWell(
        onTap: () async {
          await Contacts.makePhoneCall("009647702756666");
        },
        child: Column(
          children: [
            Icon(Iconsax.call, color: ColorRes.primary,size: AppSizes.iconMd,),
            Text(
              S.current.callUs,
              style:  TextStyle(fontSize:AppSizes.fontSizeSm/1.2, color: ColorRes.primary),
            ),
          ],
        ),
      ),
      InkWell(
        onTap: () {
          Contacts.openWhatsAppChat(
              num: "009647702756666", message: S.current.whatisNewOffers);
        },
        child: Column(
          children: [
            SvgPicture.asset(
              AssetRes.whatsappIconWhite,
              color: ColorRes.primary,
              height:  AppSizes.iconMd
            ),
            Text(
              S.current.whatsApp,
              style:  TextStyle(fontSize:AppSizes.fontSizeSm/1.2, color: ColorRes.primary),
            ),
          ],
        ),
      ),
    ];
    return Directionality(
      textDirection: TextDirection.ltr,
      child: AnimatedBottomNavigationBar.builder(
        itemCount: _items.length,
        height: kToolbarHeight * 1.3.h,
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
