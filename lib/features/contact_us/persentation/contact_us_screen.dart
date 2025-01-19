import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/features/contact_us/persentation/controllers/contact_us_cubit.dart';
import 'package:fursan_travel_app/features/contact_us/persentation/widgets/Custom_contact_us_button.dart';
import 'package:fursan_travel_app/features/contact_us/persentation/widgets/contact_us_form_body.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../generated/l10n.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: DAppBar(
        title: S.current.callUs,
        showBackArrow: true,
      ),
      body: BlocProvider(
        create: (context) => serviceLocator<ContactUsCubit>(),
        child: Builder(builder: (context) {
          final controller = context.read<ContactUsCubit>();
          return Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.all(AppSizes.padding),
              child: Stack(
                children: [
                  const ContactUsFormBody(),
                  Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: CustomContactUsButton(
                        onTab: () {
                          if (_formKey.currentState!.validate()) {
                            controller.sendContactUsForm();
                            Navigator.popAndPushNamed(
                                context, DRoutesName.navigationMenuRoute);
                          }
                        },
                      ))
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
