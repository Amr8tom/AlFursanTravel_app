import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';

import '../../../generated/l10n.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        showBackArrow: true,
        title: S.current.searchTitle,
      ),
      body: Text("SearchScreen"),
    );
  }
}
