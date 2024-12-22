import 'package:flutter/material.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';

import '../../../generated/l10n.dart';
import 'widget/make_visa_reservation_Button.dart';

class MakeReservationScreen extends StatelessWidget {
  final String visaId;
  const MakeReservationScreen({super.key, required this.visaId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: S.current.reservation,
      ),
      body: Stack(
        children: [
          Container(),
          Positioned(
              left: 0, right: 0, child: VisaReservationButton(visaID: visaId))
        ],
      ),
    );
  }
}
