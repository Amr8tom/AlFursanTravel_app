import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/features/visas/presentation/controllers/make_reservation/make_visa_reservation_cubit.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class VisaReservationButton extends StatelessWidget {
  final String visaID;
  const VisaReservationButton({super.key, required this.visaID});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => serviceLocator<MakeVisaReservationCubit>(),
      child: BlocBuilder<MakeVisaReservationCubit, MakeVisaReservationState>(
        builder: (context, state) {
          if (state is MakeVisaReservationInit) {
            return _BookButton(
                tabState: Text(
                  S.current.confirm,
                  style: TextStyle(color: ColorRes.white),
                ),
                onTab: () {
                  context
                      .read<MakeVisaReservationCubit>()
                      .makeVisaReservation(visaID: visaID);
                });
          } else if (state is MakeVisaReservationSuccess) {
            return _BookButton(
                tabState: Text("reservation form sent"), onTab: () {});
          } else if (state is MakeVisaReservationLoading) {
            // return _BookButton(tabState: CustomUI.simpleLoader(), onTab: () {});
            return _BookButton(
                tabState: CustomUI.loader(context: context), onTab: () {});
          } else {
            return _BookButton(tabState: CustomUI.tryLater(), onTab: () {});
          }
        },
      ),
    );
  }
}

Widget _BookButton({required Widget tabState, required VoidCallback onTab}) {
  return GestureDetector(
    onTap: onTab,
    child: Container(
      padding: EdgeInsets.all(AppSizes.iconPadding),
      decoration: BoxDecoration(
        color: ColorRes.primary,
      ),
      child: Center(child: tabState),
    ),
  );
}
