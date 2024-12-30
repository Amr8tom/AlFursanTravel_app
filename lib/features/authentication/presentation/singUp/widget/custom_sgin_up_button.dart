import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../../../generated/l10n.dart';

class CustomSginUpButton extends StatelessWidget {
  const CustomSginUpButton({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: AppSizes.padding),
        child: Text(
          S.current.confirm,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
