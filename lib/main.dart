import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fursan_travel_app/features/app/app.dart';
import 'features/language/presentation/controller/language_cubit.dart';
import 'features/service_locator/service_locator.dart';
import 'utils/constants/colors.dart';
import 'utils/device/device_utility.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DI.execute();
  DDeviceUtils.setStatusBarColor(ColorRes.transparent);
  DDeviceUtils.initCacheHelper();
  await ScreenUtil.ensureScreenSize();
  /// get the cached language
  await serviceLocator<LanguageCubit>().init();
  runApp(const FursanApp());
}
