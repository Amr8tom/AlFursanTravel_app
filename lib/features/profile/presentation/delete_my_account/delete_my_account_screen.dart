import 'package:flutter/material.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';

import '../../../../generated/l10n.dart';
import 'widgets/delete_my_Account_body.dart';

class DeleteMyAccountScreen extends StatelessWidget {
  const DeleteMyAccountScreen ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(title: S.current.deleteAccount),
      body: const DeleteMyAccountBody(),
    );
  }
}
