import 'package:flutter/material.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../../../generated/l10n.dart';

class PreviousToursScreen extends StatelessWidget {
  const PreviousToursScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: S.current.previousTrips,
        fontSize: AppSizes.fontSizeMd,
        showBackArrow: true,
      ),
      body: Center(
        child: Text(S.current.noPreviousTrips),
      ),
    );
  }
}
