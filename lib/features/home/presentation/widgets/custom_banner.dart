import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:AppSizes.padding),
      child: SizedBox(
        width: double.maxFinite,
        height: AppSizes.productImageSize/1.2,
        child: Image.asset(
          fit: BoxFit.fitWidth,
          // width: double.infinity,
          scale: 0.8,
          AssetRes.homeBanner3,
          // height: AppSizes.imageThumbSize,
        ),
      ),
    );
  }
}
