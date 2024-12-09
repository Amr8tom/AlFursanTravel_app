import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/language/presentation/widget/custom_lang_widget.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/controller/navigation_cubit.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/controller/navigation_cubit.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/image_strings.dart';
import 'package:fursan_travel_app/utils/device/device_utility.dart';
import 'package:fursan_travel_app/utils/local_storage/cach_keys.dart';
import 'package:fursan_travel_app/utils/local_storage/cache_helper.dart';

import '../../../../generated/l10n.dart';

class SelectLanguageBody extends StatelessWidget {
  const SelectLanguageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<NavigationCubit>();
    double hight = DDeviceUtils.getScreenHeight(context);
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return GridView.count(
          crossAxisCount: 1,
          childAspectRatio: 1.1,
          shrinkWrap: true,
          children: [
            CustomLangWidget(
                imagPath: AssetRes.ar,
                langName: S.current.arabic,
                hight: hight / 3,
                onTab: () {
                  controller.chnageLange(Locale("ar"));
                  PrefService.putString(key: CacheKeys.lang, value: "ar");
                  Navigator.popAndPushNamed(
                      context, DRoutesName.navigationMenuRoute);
                }),
            CustomLangWidget(
                imagPath: AssetRes.en,
                langName: S.current.english,
                isSvg: true,
                hight: hight / 3,
                onTab: () {
                  controller.chnageLange(Locale("ar"));
                  PrefService.putString(key: CacheKeys.lang, value: "en");
                  Navigator.popAndPushNamed(
                      context, DRoutesName.navigationMenuRoute);
                })
          ],
        );
      },
    );
  }
}
