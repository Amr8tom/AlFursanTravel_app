import 'package:flutter/cupertino.dart';
import 'package:fursan_travel_app/features/language/presentation/widget/custom_lang_widget.dart';
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
    double hight = DDeviceUtils.getScreenHeight(context);
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
              Locale("ar");
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
              Locale("en");
              PrefService.putString(key: CacheKeys.lang, value: "en");
              Navigator.popAndPushNamed(
                  context, DRoutesName.navigationMenuRoute);
            })
      ],
    );
  }
}
