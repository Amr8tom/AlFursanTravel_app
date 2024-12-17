import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppSizes.productImageSize,
      child: Image.asset(
        scale: 0.8,
        AssetRes.homeBanner3,
        height: AppSizes.imageThumbSize,
      ),
    );
  }
}
