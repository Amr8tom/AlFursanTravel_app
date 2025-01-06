
import 'package:flutter/material.dart';
import 'package:fursan_travel_app/features/authentication/presentation/login/widget/login_header.dart';
import 'package:fursan_travel_app/utils/device/device_utility.dart';

import '../../../../../utils/constants/sizes.dart';
import 'login_form.dart';

class CustomLoginBody extends StatelessWidget {
  const CustomLoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        width: DDeviceUtils.getScreenWidth(context),
        height: DDeviceUtils.getScreenHeight(context),
        child: Stack(
          children: [
            const Positioned(
                top: 0, left: 0, right: 0, child: const LoginHeader()),
      
            /// Login Form Widget
            Positioned(
              left: AppSizes.padding * 1.5,
              right: AppSizes.padding * 1.5,
              child: const DLoginForm(),
            ),
          ],
        ),
      ),
    );
  }
}
