import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class CustomTextFromReservation extends StatelessWidget {
  final String label;
  final String validateError;
  final IconData icon;
  final bool isMail;
  final TextEditingController controller;
  final bool isPhone;

  const CustomTextFromReservation(
      {super.key,
      required this.label,
      this.isMail = false,
      this.isPhone = false,
      required this.validateError,
      required this.icon,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: isPhone ? TextInputType.phone : TextInputType.text,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(icon),
      ),
      validator: (value) {
        if (isMail) {
          if (value == null || value.isEmpty) {
            return validateError;
          } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
              .hasMatch(value)) {
            return S.current.error;
          }
        } else {
          if (value == null || value.isEmpty) {
            return validateError;
          }
          return null;
        }
      },
    );
  }
}
