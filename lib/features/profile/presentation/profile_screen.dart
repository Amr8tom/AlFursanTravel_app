import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import '../../../generated/l10n.dart';
import '../../navigation_menu/pressentation/widgets/custom_profile_app_bar.dart';
import 'widgets/custom_profile_button_widget.dart';
import 'widgets/custom_profile_image_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomProfileAppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// make size
              SizedBox(
                height: AppSizes.space,
              ),
              const CustomProfileImageContainer(),

              ///size
              SizedBox(
                height: AppSizes.defaultSpace * 2,
              ),

              CustomProfileButtonWidget(
                title: S.current.profileInfo,
                icon: Iconsax.profile_add,
                onTap: () {
                  Navigator.pushNamed(
                      context, DRoutesName.editProfileInfoRoute);
                },
              ),

              // ///size
              // SizedBox(
              //   height: AppSizes.spaceBetweenIcon,
              // ),
              //
              // CustomProfileButtonWidget(
              //   title: S.current.settings,
              //   icon: Iconsax.setting_2,
              //   onTap: () {},
              // ),

              ///size
              SizedBox(
                height: AppSizes.spaceBetweenIcon,
              ),

              CustomProfileButtonWidget(
                title: S.current.previousTrips,
                icon: Iconsax.airplane,
                onTap: () {
                  Navigator.pushNamed(context, DRoutesName.previousToursRoute);
                },
              ),

              ///size
              SizedBox(
                height: AppSizes.spaceBetweenIcon,
              ),

              CustomProfileButtonWidget(
                title: S.current.bookmarked,
                icon: Iconsax.bookmark,
                onTap: () {
                  Navigator.pushNamed(context, DRoutesName.bookmarkedRoute);
                },
              ),

              ///size
              SizedBox(
                height: AppSizes.spaceBetweenIcon,
              ),

              CustomProfileButtonWidget(
                title: S.current.version,
                icon: Iconsax.bookmark,
                onTap: () {
                  Navigator.pushNamed(context, DRoutesName.versionRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
