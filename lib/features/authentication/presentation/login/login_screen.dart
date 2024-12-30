import 'package:flutter/material.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/features/authentication/presentation/login/widget/login_header.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../../generated/l10n.dart';
import 'widget/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        showBackArrow: true,
        title: S.current.singIn,
        fontSize: AppSizes.fontSizeMd,
      ),
      body: Stack(
        children: [
          const Positioned(
              top: 0, left: 0, right: 0, child: const LoginHeader()),

          /// Login Form Widget
          Positioned(
            left: AppSizes.padding * 1.5,
            right: AppSizes.padding * 1.5,
            child: const DLoginForm(),
          ),
        ],
      ),
    );
  }
}
