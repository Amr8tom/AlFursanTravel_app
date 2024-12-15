import 'package:flutter/cupertino.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

import '../../../generated/l10n.dart';
import 'widgets/custom_profile_button_widget.dart';
import 'widgets/custom_profile_image_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///make size
            // SizedBox(
            //   height: AppSizes.space,
            // ),
            const CustomProfileImageContainer(),

            ///size
            SizedBox(
              height: AppSizes.defaultSpace * 2,
            ),

            CustomProfileButtonWidget(
              title: S.current.profileInfo,
              icon: Iconsax.profile_add,
              onTap: () {},
            ),

            ///size
            SizedBox(
              height: AppSizes.spaceBetweenIcon,
            ),

            CustomProfileButtonWidget(
              title: S.current.settings,
              icon: Iconsax.setting_2,
              onTap: () {},
            ),

            ///size
            SizedBox(
              height: AppSizes.spaceBetweenIcon,
            ),

            CustomProfileButtonWidget(
              title: S.current.previousTrips,
              icon: Iconsax.airplane,
              onTap: () {},
            ),

            ///size
            SizedBox(
              height: AppSizes.spaceBetweenIcon,
            ),

            CustomProfileButtonWidget(
              title: S.current.bookmarked,
              icon: Iconsax.bookmark,
              onTap: () {},
            ),

            ///size
            SizedBox(
              height: AppSizes.spaceBetweenIcon,
            ),

            CustomProfileButtonWidget(
              title: S.current.version,
              icon: Iconsax.bookmark,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
