import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class DCardTheme {
  DCardTheme._();

  static CardTheme lightCardTheme = CardTheme(
    color: Colors.white,
    elevation: 8.0, // Higher shadow effect
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0), // More rounded corners
    ),
  );

  static CardTheme darkCardTheme = CardTheme(
    color: Colors.white,
    elevation: 8.0, // Higher shadow effect
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0), // More rounded corners
    ),
  );
}
