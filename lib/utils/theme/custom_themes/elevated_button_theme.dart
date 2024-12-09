import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class DElevatedButtonTheme {
  DElevatedButtonTheme._();

  /// -- Light Theme
  static final ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      side: const BorderSide(color: ColorRes.primary),
      // elevation: 2,
      backgroundColor: ColorRes.primary,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      textStyle: TextStyle(
          color: Colors.white,
          fontFamily: "Cairo",
          fontSize: 21.sp,
          fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
    ),
  );

  /// -- Dark Theme
  static final ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      side: const BorderSide(color: ColorRes.primary),
      // elevation: 2,
      backgroundColor: ColorRes.primary,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      textStyle: TextStyle(
          color: Colors.white,
          fontFamily: "Cairo",
          fontSize: 21.sp,
          fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
    ),
  );
}
