import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fursan_travel_app/features/app/app.dart';

import 'utils/constants/colors.dart';
import 'utils/device/device_utility.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // DI.execute();
  DDeviceUtils.setStatusBarColor(ColorRes.transparent);
  DDeviceUtils.initCacheHelper();
  ScreenUtil.ensureScreenSize();
  runApp(const FursanApp());
}
