import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';
import 'package:fursan_travel_app/features/visas/presentation/controllers/make_reservation/make_visa_reservation_cubit.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class VisaReservationButton extends StatelessWidget {
  final VoidCallback onTap;
  const VisaReservationButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MakeVisaReservationCubit, MakeVisaReservationState>(
      builder: (context, state) {
        if (state is MakeVisaReservationInit) {
          return _BookButton(
              tabState: Text(
                S.current.confirm,
                style: TextStyle(color: ColorRes.white),
              ),
              onTab: onTap);
        } else {
          return _BookButton(tabState: Text("sent"), onTab: () {});
        }
        // else if (state is MakeVisaReservationLoading) {
        return _BookButton(tabState: CustomUI.simpleLoader(), onTab: () {});
        // return _BookButton(
        //     tabState: CustomUI.loader(context: context), onTab: () {});
        // } else {
        //   return _BookButton(tabState: CustomUI.tryLater(), onTab: () {});
        // }
      },
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
