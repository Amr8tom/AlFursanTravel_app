import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';

import '../../constants/colors.dart';

class DTextTheme {
  DTextTheme._();

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    // : TextStyle(fontSize: 22,color: Colors.white),
    headlineLarge: const TextStyle().copyWith(
        fontSize: 44.sp,
        fontWeight: FontWeight.w900,
        color: ColorRes.primary,
        fontFamily: 'Alexandria'),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 18.sp,
        fontWeight: FontWeight.w900,
        color: ColorRes.greenBlue,
        fontFamily: 'Alexandria'),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.sp, fontWeight: FontWeight.w600, color: Colors.black),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.sp, fontWeight: FontWeight.w400, color: Colors.black),
    bodyLarge: const TextStyle(overflow: TextOverflow.ellipsis).copyWith(
        fontSize: 22.sp, fontWeight: FontWeight.w500, color: ColorRes.primary),
    bodyMedium: const TextStyle(overflow: TextOverflow.ellipsis).copyWith(
        fontSize: 18.sp,
        fontWeight: FontWeight.normal,
        color: ColorRes.primary),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.sp, fontWeight: FontWeight.w500, color: ColorRes.primary),
    labelLarge: TextStyle(
        fontSize: 30.sp, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 22.sp, fontWeight: FontWeight.normal, color: Colors.black),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    // button: TextStyle(fontSize: 45.sp),
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.sp, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.sp, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.sp, fontWeight: FontWeight.w600, color: Colors.white),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.white),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.sp, fontWeight: FontWeight.w400, color: Colors.white),
    bodyLarge: const TextStyle(overflow: TextOverflow.ellipsis).copyWith(
        fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.white),
    bodyMedium: const TextStyle(overflow: TextOverflow.clip).copyWith(
        fontSize: 14.sp, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.white),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.sp, fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
        color: Colors.white.withOpacity(0.5)),
  );
}
