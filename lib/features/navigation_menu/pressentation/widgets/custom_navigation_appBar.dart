import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/controller/navigation_cubit.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../generated/l10n.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/contancts.dart';
import '../../../../utils/device/device_utility.dart';

class CustomNavigationAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomNavigationAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigationCubit, NavigationState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final controller = context.read<NavigationCubit>();
        return Directionality(
          textDirection: TextDirection.rtl,
          child: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, DRoutesName.langRoute);
                },
                icon: Icon(Iconsax.translate4),
                color: ColorRes.primary,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DRoutesName.profileInfoRoute);
                  },
                  icon: Icon(
                    Iconsax.profile_tick5,
                    color: ColorRes.primary,
                  )),
            ],
            title: Text(
              _title[controller.indx],
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () async {
                  await Contacts.makePhoneCall("+201024264021");
                },
                icon: Icon(
                  Iconsax.call,
                  color: ColorRes.primary,
                )),
          ),
        );
      },
    );
  }

  Size get preferredSize => Size.fromHeight(DDeviceUtils.getAppBarHeight());
}

List<String> _title = [
  S.current.home,
  S.current.notifications,
  S.current.favorite,
  S.current.profileInfo
];
