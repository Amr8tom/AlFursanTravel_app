import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/constants/colors.dart';

class CustomBookingButton extends StatelessWidget {
  final VoidCallback onTab;
  const CustomBookingButton({super.key, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        padding: EdgeInsets.all(AppSizes.iconPadding),
        decoration: BoxDecoration(
          color: ColorRes.primary,
        ),
        child: Center(
          child: Text(
            S.current.bookNow,
            style: TextStyle(color: ColorRes.white),
          ),
        ),
      ),
    );
  }
}
