import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';
import 'package:fursan_travel_app/features/profile/presentation/controllers/profile_data/get_profile_data_cubit.dart';
import 'package:fursan_travel_app/utils/constants/image_strings.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class CustomProfileImageContainer extends StatelessWidget {
  const CustomProfileImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProfileDataCubit, GetProfileDataState>(
      builder: (context, state) {
        if (state is GetProfileDataSuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// profile image
              // Image.asset(
              //   AssetRes.profileLogo,
              //   height: AppSizes.productImageSize,
              // ),
              Icon(
                Iconsax.profile_circle5,
                size: AppSizes.iconLg * 5,
                color: ColorRes.primary,
              ),

              /// make size
              SizedBox(
                height: AppSizes.spaceBetweenIcon,
              ),

              /// User name
              Text(state.profileDataModel.profile?.firstName ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: ColorRes.primary)),

              /// e-mail
              Text(
                state.profileDataModel.profile?.email ?? "",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: ColorRes.primaryBGAppBar, fontSize: AppSizes.md),
              ),
            ],
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}
