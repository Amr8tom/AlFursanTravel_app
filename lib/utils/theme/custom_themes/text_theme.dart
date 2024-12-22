import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';

import '../../constants/colors.dart';

class DTextTheme {
  DTextTheme._();

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    // : TextStyle(fontSize: 22,color: Colors.white),
    headlineLarge: TextStyle().copyWith(
        fontSize: 44,
        fontWeight: FontWeight.w900,
        color: ColorRes.primary,
        fontFamily: 'Alexandria'),
    headlineMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w900,
        color: ColorRes.greenBlue,
        fontFamily: 'Alexandria'),
    headlineSmall: TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
    titleLarge: TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
    bodyLarge: TextStyle(overflow: TextOverflow.ellipsis).copyWith(
        fontSize: 22, fontWeight: FontWeight.w500, color: ColorRes.primary),
    bodyMedium: TextStyle(overflow: TextOverflow.ellipsis).copyWith(
        fontSize: 18, fontWeight: FontWeight.normal, color: ColorRes.primary),
    bodySmall: TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: ColorRes.primary),
    labelLarge: TextStyle(
        fontSize: 30, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: TextStyle().copyWith(
        fontSize: 22, fontWeight: FontWeight.normal, color: Colors.black),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    // button: TextStyle(fontSize: 45),
    headlineLarge: TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
    titleLarge: TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
    titleSmall: TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
    bodyLarge: TextStyle(overflow: TextOverflow.ellipsis).copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
    bodyMedium: TextStyle(overflow: TextOverflow.clip).copyWith(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
    labelLarge: TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.white.withOpacity(0.5)),
  );
}
