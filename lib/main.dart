import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fursan_travel_app/features/app/app.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/controller/navigation_cubit.dart';

import 'utils/constants/colors.dart';
import 'utils/device/device_utility.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // DI.execute();
  DDeviceUtils.setStatusBarColor(ColorRes.transparent);
  DDeviceUtils.initCacheHelper();
  ScreenUtil.ensureScreenSize();
  NavigationCubit controller = NavigationCubit();
  controller.init();
  runApp(BlocProvider(
    create: (context) => controller,
    child: const FursanApp(),
  ));
}
