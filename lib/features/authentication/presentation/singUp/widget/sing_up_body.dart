import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import 'custom_sgin_up_button.dart';
import 'custom_sgin_up_from.dart';

class SingUpBody extends StatelessWidget {
  const SingUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.padding),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          const CustomSginUpFrom(),
          Positioned(
              bottom: AppSizes.spaceBtwItems,
              child: const CustomSginUpButton())
        ],
      ),
    );
  }
}
