import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/search/presentation/controllers/search_cubit/search_cubit.dart';
import 'package:fursan_travel_app/features/search/presentation/controllers/search_history/search_history_cubit.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/constants/sizes.dart';

class CustomHistorySuggesstionsResults extends StatelessWidget {
  const CustomHistorySuggesstionsResults({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
      final controller = context.read<SearchHistoryCubit>();
      final searchController = context.read<SearchCubit>();
      return BlocBuilder<SearchHistoryCubit, SearchHistoryState>(
        builder: (context, state) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Material(
              color: Colors.white,
              elevation: 4,
              child: Builder(
                builder: (context) {
                  if (controller.filteredSearchHistory.length == 0 &&
                      controller.searchQuery.trim() == '') {
                    return Container(
                      height: AppSizes.heightcontainer * 1.3,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        S.current.startSearch,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    );
                  } else if (controller.filteredSearchHistory.length == 0) {
                    return ListTile(
                      title: Text(controller.searchQuery),
                      leading: const Icon(Icons.search),
                      onTap: () {
                        controller.selectedTerm = controller.searchQuery;
                        controller.addSearchTerm(controller.searchQuery);
                        searchController.seach(query: controller.searchQuery);
                      },
                    );
                  } else {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: controller.filteredSearchHistory
                          .map(
                            (term) => ListTile(
                              title: Text(
                                term,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              leading: Icon(Icons.history),
                              trailing: IconButton(
                                icon: Icon(Icons.clear),
                                onPressed: () {
                                  controller.deleteSearchTerm(term);
                                },
                              ),
                              onTap: () {
                                controller.selectedTerm =
                                    term;

                                searchController.seach(
                                    query:term);
                              },
                            ),
                          )
                          .toList(),
                    );
                  }
                },
              ),
            ),
          );
        },
      );
    });
  }
}
