import 'package:flutter/material.dart';
import 'package:fursan_travel_app/features/search/presentation/widgets/custom_search_bar.dart';
import '../../../common/widgets/appbar/appbar.dart';
import '../../../generated/l10n.dart';
import 'widgets/custom_searched_item_list.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: DAppBar(
        title: S.current.search,
      ),
      body: const Column(
        children: [
          const CustomSearchBar(),
          const CustomSearchedItemList(),

        ],
      ),
    );
  }
}
