import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/authentication/presentation/singUp/widget/sgin_up_header.dart';

import '../../../../../common/custom_ui.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../routing/routes_name.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../visas/presentation/widget/Custom_Text_from_reservation.dart';
import '../../controller/sing_up/sing_up_cubit.dart';

class CustomSginUpFrom extends StatelessWidget {
  const CustomSginUpFrom({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>(); // GlobalKey for form validation

    final controller = context.read<SingUpCubit>();
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Form(
          key: _formKey,
          child: Container(
            height: DDeviceUtils.getScreenHeight(context),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SginUpHeader(),
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
                    label: S.current.password,
                    validateError: S.current.pleaseEndterValue,
                    icon: Icons.phone,
                    controller: controller.passwordController,
                  ),

                  SizedBox(height: AppSizes.space * 2),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: AppSizes.spaceBtwItems,
            child: BlocConsumer<SingUpCubit, SingUpState>(
              listener: (context, state) {
                print(state);
                if (state is SingUpSuccess) {
                  Navigator.popAndPushNamed(
                      context, DRoutesName.navigationMenuRoute);
                  CustomUI.snackBarSuccess(
                      context: context, Msg: S.current.registerSuccessfully);
                }
              },
              builder: (context, state) {
                if (state is SingUpLoading) {
                  return CustomUI.simpleLoader();
                } else {
                  return ElevatedButton(
                    onPressed: () {
                      final controller = context.read<SingUpCubit>();
                      if (_formKey.currentState!.validate()) {
                        controller.signUp();
                      }
                    },
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: AppSizes.padding),
                      child: Text(
                        S.current.confirm,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }
              },
            ))
      ],
    );
  }
}
