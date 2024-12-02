import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fursan_travel_app/routing/routes.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/theme/theme.dart';
import '../../generated/l10n.dart';
import '../../utils/local_storage/cach_keys.dart';
import '../../utils/local_storage/cache_helper.dart';

class FursanApp extends StatelessWidget {
  const FursanApp({super.key});

  @override
  Widget build(BuildContext context) {
    String? changedLang = PrefService.getString(key: CacheKeys.lang);

    String? storedLang = changedLang == '' ? "en" : changedLang;
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          theme: DAppTheme.lightTheme(context),
          darkTheme: DAppTheme.darkTheme(context),
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: changedLang == ''
              ? DRoutesName.langRoute
              : DRoutesName.navigationMenuRoute,
          supportedLocales: S.delegate.supportedLocales,
          localeResolutionCallback: (locale, supportedLocales) {
            return Locale(storedLang!);
          },
          localizationsDelegates: [
            S.delegate, // //
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
        );
      },
    );
  }
}
