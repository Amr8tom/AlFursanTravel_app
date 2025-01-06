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
    final controller= context.read<LoginCubit>();
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// default Space
            SizedBox(
              height: AppSizes.defaultSpace * 14,
            ),

            /// Email Field
            TextField(
              controller: controller.emailController,
              decoration: InputDecoration(
                labelText: S.current.eMail,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
                ),
              ),
            ),
            SizedBox(height: AppSizes.spaceBtwInputFields),

            /// Password Field
            TextField(
            controller:controller.passwordController,
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                labelText: S.current.password,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
                ),
              ),
            ),
            SizedBox(height: AppSizes.defaultSpace),

            /// Login Button
            ElevatedButton(
              onPressed: () {
                controller.login();
              },
              child: Text(
                S.current.singIn,
                style: TextStyle(color: Colors.white),
              ),
            ),

            /// sign up button

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

            /// terms and conditions button
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, DRoutesName.termsAndConditionRoute);
              },
              child: Text(
                "${S.current.termsOfUse} ",
                style: TextStyle(
                    color: ColorRes.primary, fontSize: AppSizes.fontSizeSm),
              ),
            ),
          ],
        );
      },
    );
  }
}
