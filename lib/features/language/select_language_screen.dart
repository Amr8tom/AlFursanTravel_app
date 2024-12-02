import 'package:flutter/material.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';

import '../../generated/l10n.dart';
import 'presentation/widget/select_language_body.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        bgColor: Colors.white,
        showBackArrow: false,
        title: S.current.selectLanguage,
      ),
      body: const SelectLanguageBody(),
    );
  }
}
