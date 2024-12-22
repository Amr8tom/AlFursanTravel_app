import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/visas/presentation/controllers/make_reservation/make_visa_reservation_cubit.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/device/device_utility.dart';
import 'Custom_Text_from_reservation.dart';

class CustomVisaReservationForm extends StatelessWidget {
  const CustomVisaReservationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<MakeVisaReservationCubit>();
    return Container(
      height: DDeviceUtils.getScreenHeight(context),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            SizedBox(height: AppSizes.spaceBtwItems),

            /// Notes Field
            TextFormField(
              controller: controller.notesController,
              decoration: InputDecoration(
                labelText: S.current.notes,
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.note),
              ),
              maxLines: 5,
            ),
            SizedBox(height: AppSizes.space * 2),
          ],
        ),
      ),
    );
  }
}