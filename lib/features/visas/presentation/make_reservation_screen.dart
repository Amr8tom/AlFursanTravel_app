import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/features/visas/presentation/widget/custom_visa_reservation_form.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../generated/l10n.dart';
import 'controllers/make_reservation/make_visa_reservation_cubit.dart';
import 'widget/make_visa_reservation_Button.dart';

class MakeReservationScreen extends StatelessWidget {
  final String visaId;

  const MakeReservationScreen({super.key, required this.visaId});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: DAppBar(
        title: S.current.visaForm,
        fontSize: AppSizes.fontSizeMd,
        showBackArrow: true,
      ),
      body: BlocProvider(
        create: (context) => serviceLocator<MakeVisaReservationCubit>(),
        child: BlocBuilder<MakeVisaReservationCubit, MakeVisaReservationState>(
          builder: (context, state) {
            return Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.all(AppSizes.padding),
                child: Stack(
                  children: [
                    const CustomVisaReservationForm(),
                    Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: VisaReservationButton(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              context
                                  .read<MakeVisaReservationCubit>()
                                  .makeVisaReservation(visaID: visaId);
                            }
                          },
                        ))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
