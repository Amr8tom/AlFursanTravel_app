import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/image_strings.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../utils/constants/colors.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: AppSizes.defaultSpace),
        Image.asset(
          AssetRes.appLogo,
          height: AppSizes.productItemHeight,
        ),
        // Welcome Title
        Text(
          S.current.appName,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: AppSizes.fontSizeLg * 2,
                color: ColorRes.primary,
              ),
        ),

        SizedBox(height: AppSizes.spaceBtwItems * 1.5),
        // Subtitle or Brief Message
        Text(
          "${S.current.loginBody}",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: ColorRes.primary,
              ),
        ),
      ],
    );
  }
}
