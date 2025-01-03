import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/device/device_utility.dart';

class CustomButtonMajorInApp extends StatelessWidget {
  CustomButtonMajorInApp(
      {super.key, required this.text, this.onPressed, this.margin});

  final String text;
  void Function()? onPressed;
  double? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: DDeviceUtils.getScreenWidth(context) * .06),
      margin: EdgeInsets.only(bottom: margin ?? 0),
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: ColorRes.white, height: .5.h),
          )),
    );
  }
}
