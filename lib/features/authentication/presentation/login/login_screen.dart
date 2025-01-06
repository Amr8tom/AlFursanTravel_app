import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/features/authentication/presentation/controller/log_in/login_cubit.dart';
import 'package:fursan_travel_app/features/authentication/presentation/login/widget/custom_login_body.dart';
import 'package:fursan_travel_app/features/authentication/presentation/login/widget/login_header.dart';
import 'package:fursan_travel_app/features/profile/presentation/profile_screen.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../../generated/l10n.dart';
import 'widget/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => serviceLocator<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginState>(
        builder: (context, state) {
          /// Handle loading, failure, and normal state
          if (state is LoginLoading) {
            return Scaffold(
              appBar: DAppBar(
                showBackArrow: true,
                title: S.current.singIn,
                fontSize: AppSizes.fontSizeMd,
              ),
              body: CustomUI.simpleLoader(), // Show loader during login
            );
          } else if (state is LoginFailure) {
            return Scaffold(
              appBar: DAppBar(
                showBackArrow: true,
                title: S.current.singIn,
                fontSize: AppSizes.fontSizeMd,
              ),
              body: CustomUI.simpleFailure(), // Show failure message
            );
          } else {
            return Scaffold(
              appBar: DAppBar(
                showBackArrow: true,
                title: S.current.singIn,
                fontSize: AppSizes.fontSizeMd,
              ),
              body: const CustomLoginBody(), // Show normal login body
            );
          }
        },
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.pushReplacementNamed(context, DRoutesName.profileInfoRoute);
          }
        },
      ),
    );
  }
}
