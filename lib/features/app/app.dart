import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fursan_travel_app/common/widgets/navigationbar/navigation_menu/navigation_menu_cubit.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/controller/navigation_cubit.dart';
import 'package:fursan_travel_app/routing/routes.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/theme/theme.dart';
import '../../generated/l10n.dart';
import '../../utils/local_storage/cach_keys.dart';
import '../../utils/local_storage/cache_helper.dart';
import '../authentication/presentation/controller/log_in/login_cubit.dart';
import '../language/presentation/controller/language_cubit.dart';
import '../navigation_menu/pressentation/navigator_menu_screen.dart';
import '../service_locator/service_locator.dart';

class FursanApp extends StatelessWidget {
  const FursanApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<LanguageCubit>();
    /// check and get the user login data if user or just a guest
    serviceLocator<LoginCubit>().checkIsGuestOrUser();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocBuilder<LanguageCubit, LanguageState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              themeMode: ThemeMode.light,
              theme: DAppTheme.lightTheme(context),
              onGenerateRoute: RouteGenerator.generateRoute,
              initialRoute: DRoutesName.navigationMenuRoute,
              localeListResolutionCallback: (locales, supportedLocales) {
                return controller.currentLang ?? supportedLocales.first;
              },
              supportedLocales: [
                Locale('en'), // English
                Locale('ar'), // Arabic
              ],
              locale: controller.currentLang,
              localizationsDelegates: [
                S.delegate, // //
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
              ],
            );
          },
        );
      },
    );
  }
}
