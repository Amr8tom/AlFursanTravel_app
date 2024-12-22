import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/features/tours/presentation/widgets/custom_tour_reservation_form.dart';
import 'package:fursan_travel_app/features/tours/presentation/widgets/tour_reservation_button.dart';
import 'package:fursan_travel_app/features/visas/presentation/widget/custom_visa_reservation_form.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../generated/l10n.dart';
import '../../../routing/routes_name.dart';
import 'controllers/make_reservation/make_tour_reservation_cubit.dart';

class MakeToureReservationScreen extends StatelessWidget {
  const MakeToureReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: DAppBar(
        title: S.current.tourForm,
        fontSize: AppSizes.fontSizeMd,
        showBackArrow: true,
      ),
      body: BlocProvider(
        create: (context) => serviceLocator<MakeTourReservationCubit>(),
        child: BlocBuilder<MakeTourReservationCubit, MakeTourReservationState>(
          builder: (context, state) {
            return Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.all(AppSizes.padding),
                child: Stack(
                  children: [
                    const CustomTourReservationForm(),
                    Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: TourReservationButton(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              context
                                  .read<MakeTourReservationCubit>()
                                  .makeTourReservation();
                              Navigator.popAndPushNamed(
                                  context, DRoutesName.navigationMenuRoute);
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
