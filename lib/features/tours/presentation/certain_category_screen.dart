import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../common/widgets/appbar/appbar.dart';
import '../../../generated/l10n.dart';

class CertainCategoryScreen extends StatelessWidget {
  final Map<String, dynamic> arg;
  const CertainCategoryScreen({super.key, required this.arg});

  @override
  Widget build(BuildContext context) {
    final List items = arg["items"];
    return Scaffold(
        appBar: DAppBar(
          showBackArrow: true,
          title: S.current.exploreIraq,
          fontSize: AppSizes.fontSizeMd,
        ),
        body: Center(
          child: Text(S.current.exploreIraq),
        ));
  }
}
