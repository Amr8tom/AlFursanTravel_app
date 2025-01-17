import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/constants/colors.dart';

class CustomContactUsButton extends StatelessWidget {
  final VoidCallback onTab;
  const CustomContactUsButton({super.key, required this.onTab});

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
            S.current.confirm,
            style: TextStyle(color: ColorRes.white),
          ),
        ),
      ),
    );
  }
}
