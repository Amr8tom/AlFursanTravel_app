import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class DAppBarTheme {
  DAppBarTheme._();

  static final lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: ColorRes.greenBlueLight,
    surfaceTintColor: ColorRes.greenBlueLight,
    shadowColor: ColorRes.greenBlueLight,
    iconTheme: IconThemeData(color: ColorRes.greenBlue, size: 24),
    actionsIconTheme: IconThemeData(color: ColorRes.black, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 32,
        // fontSize: 32.sp,
        fontWeight: FontWeight.w700,
        color: ColorRes.greenBlue),
  );

  static final darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: ColorRes.primary,
    surfaceTintColor: ColorRes.primary,
    shadowColor: ColorRes.primary,
    iconTheme: IconThemeData(color: ColorRes.white, size: 24),
    actionsIconTheme: IconThemeData(color: ColorRes.white, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 32, fontWeight: FontWeight.w700, color: ColorRes.white),
  );
}
