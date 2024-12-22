import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/helpers/navigation_extension.dart';
import 'package:lottie/lottie.dart';
import '../../../../generated/l10n.dart';
import '../../../../routing/routes_name.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';

class CustomLottieFloatingAvtionBottom extends StatelessWidget {
  const CustomLottieFloatingAvtionBottom({super.key});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        context.pushNamed(DRoutesName.searchRoute);
      },
      child: CircleAvatar(
        backgroundColor: ColorRes.primary,
        radius: 35,
        child: SizedBox(
          width: 70,
          height: kToolbarHeight * 1.5,
          child: Stack(
            children: [
              Center(
                child: SizedBox(
                  width: 50,
                  child: Transform.scale(
                      scale: 2.1,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
