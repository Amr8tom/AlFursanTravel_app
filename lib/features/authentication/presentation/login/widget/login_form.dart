import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../utils/constants/colors.dart';
import '../../controller/log/login_cubit.dart';

class DLoginForm extends StatelessWidget {
  const DLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>(); // Initialize the form key
    final controller =
        context.read<LoginCubit>();

    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Form(
          key: _formKey, // Attach the form key
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Default Space
              SizedBox(height: AppSizes.defaultSpace * 14),

              /// Email Field
              TextFormField(
                controller: controller.emailController,
                decoration: InputDecoration(
                  labelText: S.current.eMail,
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(AppSizes.borderRadiusMd),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return S.current.pleaseEndterValue;
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                    return S.current.error; // Invalid email format
                  }
                  return null; // Return null if the email is valid
                },
              ),
              SizedBox(height: AppSizes.spaceBtwInputFields),

              /// Password Field
              TextFormField(
                controller: controller.passwordController,
                obscureText: true, // Text is obscured (password field)
                decoration: InputDecoration(
                  labelText: S.current.password,
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(AppSizes.borderRadiusMd),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return S.current.pleaseEndterValue;
                  }
                  return null; // Return null if the password is valid
                },
              ),
              SizedBox(height: AppSizes.defaultSpace),

              /// Login Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Proceed with login if the form is valid
                    controller.login();
                  }
                },
                child: Text(
                  S.current.singIn,
                  style: TextStyle(color: Colors.white),
                ),
              ),

              /// Sign Up Button
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, DRoutesName.signupRoute);
                },
                child: Text(
                  "${S.current.dontHaveAccont} ${S.current.singUp}",
                  style: TextStyle(
                      color: ColorRes.primary, fontSize: AppSizes.fontSizeSm),
                ),
              ),

              /// Terms and Conditions Button
              TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Navigate only if form is valid
                    Navigator.pushNamed(
                        context, DRoutesName.termsAndConditionRoute);
                  }
                },
                child: Text(
                  "${S.current.termsOfUse} ",
                  style: TextStyle(
                      color: ColorRes.primary, fontSize: AppSizes.fontSizeSm),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
