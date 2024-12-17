import 'package:flutter/material.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../../dummy/dummy_lists.dart';
import '../../../../generated/l10n.dart';

class CustomShowAllButton extends StatelessWidget {
  const CustomShowAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding),
      child: Row(
        children: [
          Text(S.current.bestDestination),
          const Spacer(),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, DRoutesName.certainCategoryRoute,
                    arguments: {
                      "title": S.current.bestDestination,
                      "items": DummyLists.destinations
                    });
              },
              child: Text(S.current.viewAll))
        ],
      ),
    );
  }
}
