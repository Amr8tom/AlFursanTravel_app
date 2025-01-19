import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/features/authentication/presentation/login/widget/custom_login_body.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../../generated/l10n.dart';
import '../controller/log/login_cubit.dart';

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
      body: BlocProvider(
        create: (context) => serviceLocator<LoginCubit>(),
        child: BlocConsumer<LoginCubit, LoginState>(
          builder: (context, state) {
            /// Handle loading, failure, and normal state
            if (state is LoginLoading) {
              return
                CustomUI.simpleLoader();
            } else if (state is LoginFailure) {
              return
                CustomUI.simpleFailure();
            } else {
              return
                const CustomLoginBody();
            }
          },
          listener: (context, state) {
            if (state is LoginSuccess) {
              if(state.loginModel.token!=null){ Navigator.pushReplacementNamed(
                  context, DRoutesName.profileInfoRoute);}

              if(state.loginModel.token==null){
                CustomUI.snackBarFailure(context: context,Msg: state.loginModel.message);

              }

            }
          },
        ),
      ),
    );
  }
}
