import 'package:flutter/material.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../utils/constants/colors.dart';

class DLoginForm extends StatelessWidget {
  const DLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// defult Space
        SizedBox(
          height: AppSizes.defaultSpace * 14,
        ),

        /// Email Field
        TextField(
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
          onPressed: () {},
          child: Text(
            S.current.singIn,
            style: TextStyle(color: Colors.white),
          ),
        ),
        // SizedBox(height: AppSizes.spaceBtwInputFields),
        TextButton(
          // style: ElevatedButton.styleFrom(
          //     backgroundColor: ColorRes.primaryBGAppBar),
          onPressed: () {
            Navigator.pushNamed(context, DRoutesName.signupRoute);
          },
          child: Text(
            "${S.current.dontHaveAccont} ${S.current.singUp}",
            style: TextStyle(
                color: ColorRes.primary, fontSize: AppSizes.fontSizeSm),
          ),
        ),
      ],
    );
  }
}
