import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../../generated/l10n.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(AppSizes.padding),
      child: TextField(
        onChanged: (s){
        },
        decoration: InputDecoration(
          hintText: S.current.searchTitle,
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ));
  }
}
