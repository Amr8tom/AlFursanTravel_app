import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/features/authentication/presentation/controller/sing_up/sing_up_cubit.dart';
import 'package:fursan_travel_app/features/authentication/presentation/singUp/widget/custom_sgin_up_button.dart';
import 'package:fursan_travel_app/features/authentication/presentation/singUp/widget/custom_sgin_up_from.dart';
import 'package:fursan_travel_app/features/authentication/presentation/singUp/widget/sing_up_body.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../../generated/l10n.dart';

class DSignupScreen extends StatelessWidget {
  const DSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        showBackArrow: true,
        title: S.current.singUp,
        fontSize: AppSizes.fontSizeSm * 1.15,
      ),
      body: const SingUpBody()
    );
  }
}
