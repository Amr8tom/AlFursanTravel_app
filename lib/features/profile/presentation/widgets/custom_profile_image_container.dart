import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';
import 'package:fursan_travel_app/features/profile/presentation/controllers/profile_data/get_profile_data_cubit.dart';
import 'package:fursan_travel_app/utils/constants/image_strings.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../../utils/constants/colors.dart';

class CustomProfileImageContainer extends StatelessWidget {
  const CustomProfileImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =context.read<GetProfileDataCubit>();
    return BlocBuilder<GetProfileDataCubit, GetProfileDataState>(
  builder: (context, state) {
    if(state is GetProfileDataSuccess){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /// profile image
          Image.asset(
            AssetRes.google,
            height: AppSizes.productImageSize,
          ),

          /// make size
          SizedBox(
            height: AppSizes.spaceBetweenIcon,
          ),

          /// User name
          Text("Eng.Amr Alaa Ali",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: ColorRes.primary)),

          /// e-mail
          Text(
            "king88am@gmail.com",
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: ColorRes.primaryBGAppBar, fontSize: AppSizes.md),
          ),
        ],
      );
    }else{
      return CustomUI.simpleFailure();
    }

  },
);
  }
}
