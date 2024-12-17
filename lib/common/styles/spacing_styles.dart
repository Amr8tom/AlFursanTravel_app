import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';

class DSpacingStyle {
  static final EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    bottom: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
    left: AppSizes.defaultSpace,
  );
}
