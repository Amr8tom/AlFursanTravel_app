import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class TourReservationButton extends StatelessWidget {
  final VoidCallback onTap;
  const TourReservationButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return _BookButton(
        tabState: Text(
          S.current.confirm,
          style: TextStyle(color: ColorRes.white),
        ),
        onTab: onTap);
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
