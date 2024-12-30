import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/image_strings.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../utils/constants/colors.dart';

class SginUpHeader extends StatelessWidget {
  const SginUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          AssetRes.appLogo,
          height: AppSizes.productItemHeight,
        ),
        // Welcome Title
        SizedBox(
          height: AppSizes.spaceBtwItems,
        ),

        Text(
          "${S.current.welcomeMessage}",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: ColorRes.primary,
              ),
        ),
      ],
    );
  }
}
