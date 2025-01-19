import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/authentication/presentation/controller/log/login_cubit.dart';
import 'package:fursan_travel_app/features/profile/presentation/controllers/profile_data/get_profile_data_cubit.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../generated/l10n.dart';
import '../../../../routing/routes_name.dart';
import '../../../../utils/constants/sizes.dart';
import 'custom_profile_button_widget.dart';
import 'custom_profile_image_container.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final logController = context.read<LoginCubit>();
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LogOutSuccess) {
          Navigator.popAndPushNamed(context, DRoutesName.navigationMenuRoute);
        }
      },
      builder: (context, state) {
        return Center(
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
                  height: AppSizes.spaceBetweenIcon,
                ),

                /// previous trips
                CustomProfileButtonWidget(
                  title: S.current.previousTrips,
                  icon: Iconsax.airplane,
                  onTap: () {
                    Navigator.pushNamed(
                        context, DRoutesName.previousToursRoute);
                  },
                ),

                // ///size
                // SizedBox(
                //   height: AppSizes.spaceBetweenIcon,
                // ),
                //
                // /// bookMarked
                // CustomProfileButtonWidget(
                //   title: S.current.bookmarked,
                //   icon: Iconsax.bookmark,
                //   onTap: () {
                //     Navigator.pushNamed(context, DRoutesName.bookmarkedRoute);
                //   },
                // ),

                ///size
                SizedBox(
                  height: AppSizes.spaceBetweenIcon,
                ),

                /// app version
                CustomProfileButtonWidget(
                  title: S.current.version,
                  icon: Iconsax.bookmark,
                  onTap: () {
                    Navigator.pushNamed(context, DRoutesName.versionRoute);
                  },
                ),

                ///size
                SizedBox(
                  height: AppSizes.spaceBetweenIcon*3,
                ),

                /// delete profile
                CustomProfileButtonWidget(
                  title: S.current.deleteAccount,
                  icon: Iconsax.profile_delete,
                  onTap: () {
                    Navigator.pushNamed(
                        context, DRoutesName.deleteAccountRoute);
                  },
                ),

                ///size
                SizedBox(
                  height: AppSizes.spaceBetweenIcon,
                ),

                /// logOut profile
                BlocListener<LoginCubit, LoginState>(
                  listener: (context, state) {
                    if (state is LogOutSuccess) {
                      Navigator.popAndPushNamed(
                          context, DRoutesName.navigationMenuRoute);
                    }
                  },
                  child: CustomProfileButtonWidget(
                    title: S.current.logOut,
                    icon: Iconsax.logout,
                    onTap: () {
                      logController.logOut();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
