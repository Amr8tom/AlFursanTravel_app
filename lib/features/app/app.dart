
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fursan_travel_app/routing/routes.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/theme/theme.dart';
import '../../generated/l10n.dart';
import '../authentication/presentation/controller/log/login_cubit.dart';
import '../language/presentation/controller/language_cubit.dart';
import '../service_locator/service_locator.dart';

class FursanApp extends StatelessWidget {
  const FursanApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubit>(
            create: (context) => serviceLocator<LanguageCubit>()),
        BlocProvider<LoginCubit>(
            create: (context) => serviceLocator<LoginCubit>())
      ],      child: ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        final controller = context.read<LanguageCubit>();
        serviceLocator<LoginCubit>().checkIsGuestOrUser();
        return BlocBuilder<LanguageCubit, LanguageState>(
          buildWhen: (previous, current) => previous != current,
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
    ),
    );
  }
}