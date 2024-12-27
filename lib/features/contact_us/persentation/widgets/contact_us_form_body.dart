import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/contact_us/persentation/controllers/contact_us_cubit.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../visas/presentation/widget/Custom_Text_from_reservation.dart';

class ContactUsFormBody extends StatelessWidget {
  const ContactUsFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<ContactUsCubit>();
    return Container(
      height: DDeviceUtils.getScreenHeight(context),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppSizes.spaceBtwItems),

            /// Name Field
            CustomTextFromReservation(
              label: S.current.firstName,
              validateError: S.current.pleaseEndterValue,
              icon: Icons.person,
              controller: controller.nameController,
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

            /// Phone orderType Field
            CustomTextFromReservation(
              label: S.current.worktype,
              validateError: S.current.pleaseEndterValue,
              icon: Icons.type_specimen_outlined,
              controller: controller.phoneController,
            ),
            SizedBox(height: AppSizes.spaceBtwItems),

            /// massage Field
            TextFormField(
              controller: controller.messageController,
              decoration: InputDecoration(
                labelText: S.current.details,
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
    ;
  }
}
