import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
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
        radius: AppSizes.productImageRadius*2.2,
        child: SizedBox(
          width: AppSizes.space*3,
          height: kToolbarHeight * 1.9.h,
          child: Stack(
            children: [
              Center(
                child: SizedBox(
                  width: 50,
                  child: Transform.scale(
                      scale: 2.1,
                      child: Icon(
                        size: AppSizes.iconSm,
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
