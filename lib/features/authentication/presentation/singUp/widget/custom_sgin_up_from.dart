import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/authentication/presentation/singUp/widget/sgin_up_header.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../visas/presentation/widget/Custom_Text_from_reservation.dart';
import '../../controller/sing_up/sing_up_cubit.dart';

class CustomSginUpFrom extends StatelessWidget {
  const CustomSginUpFrom({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<SingUpCubit>();
    return Container(
      height: DDeviceUtils.getScreenHeight(context),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SginUpHeader(),
            SizedBox(height: AppSizes.spaceBtwItems),

            /// First Name Field
            CustomTextFromReservation(
              label: S.current.firstName,
              validateError: S.current.pleaseEndterValue,
              icon: Icons.person,
              controller: controller.firstNameController,
            ),
            SizedBox(height: AppSizes.spaceBtwItems),

            /// Last Name Field
            CustomTextFromReservation(
              label: S.current.lastName,
              validateError: S.current.pleaseEndterValue,
              icon: Icons.person_outline,
              controller: controller.lastNameController,
            ),
            SizedBox(height: AppSizes.spaceBtwItems),

            /// eMail
            CustomTextFromReservation(
              isMail: true,
              label: S.current.eMail,
              validateError: S.current.pleaseEndterValue,
              icon: Icons.email,
              controller: controller.eMailController,
            ),
            SizedBox(height: AppSizes.spaceBtwItems),

            /// Phone Number Field
            CustomTextFromReservation(
              isPhone: true,
              label: S.current.phoneNumber,
              validateError: S.current.pleaseEndterValue,
              icon: Icons.phone,
              controller: controller.phoneController,
            ),

            SizedBox(height: AppSizes.space * 2),
          ],
        ),
      ),
    );
  }
}
