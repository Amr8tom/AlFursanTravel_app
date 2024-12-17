import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class DSocialButtons extends StatelessWidget {
  const DSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Google Logo
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: ColorRes.grey),
              borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
              image: const AssetImage(AssetRes.google),
            ),
          ),
        ),

        /// Make Some Space
        SizedBox(width: AppSizes.spaceBtwItems),

        /// Facebook Logo
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: ColorRes.grey),
              borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
              image: const AssetImage(AssetRes.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
