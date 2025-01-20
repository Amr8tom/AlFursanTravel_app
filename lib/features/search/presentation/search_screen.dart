import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/search/presentation/controllers/search_cubit/search_cubit.dart';
import 'package:fursan_travel_app/features/search/presentation/widgets/custom_history_suggesstions_results.dart';
import 'package:fursan_travel_app/features/search/presentation/widgets/search_results_column.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import '../../../generated/l10n.dart';
import '../../service_locator/service_locator.dart';
import 'controllers/search_history/search_history_cubit.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<SearchHistoryCubit>(
              create: (context) => serviceLocator<SearchHistoryCubit>()),
          BlocProvider<SearchCubit>(
              create: (context) => serviceLocator<SearchCubit>())
        ],
        child: Scaffold(
          body: Builder(builder: (context) {
            final searchController = context.read<SearchCubit>();
            final historyController = context.read<SearchHistoryCubit>();
            historyController.getSearchHistory();
            return BlocBuilder<SearchHistoryCubit, SearchHistoryState>(
                builder: (context, state) {
              return FloatingSearchBar(
                actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.grey,size: AppSizes.iconMd,))],
                backgroundColor: Colors.white,
                height: AppSizes.appBarHeight,
                onSubmitted: (query) {
                  historyController
                      .addSearchTerm(historyController.searchQuery);
                  searchController.seach(query: query);
                  historyController.searchController.close();
                },
                onQueryChanged: (query) {
                  historyController
                      .updateSearchQuery(query); // Update query in the cubit
                },
                controller: historyController.searchController,
                transition: CircularFloatingSearchBarTransition(),
                physics: BouncingScrollPhysics(),
                title: Text(
                  S.current.search,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                hint: S.current.startSearch,
                hintStyle: Theme.of(context).textTheme.bodyLarge,
                body: const SearchResultsColumn(),
                builder: (context, transition) {
                  return const CustomHistorySuggesstionsResults();
                },
              );
            });
          }),
        ));
  }
}
