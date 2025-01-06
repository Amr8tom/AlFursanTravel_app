import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/utils/local_storage/cach_keys.dart';
import 'package:fursan_travel_app/utils/local_storage/cache_helper.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import 'package:meta/meta.dart';

part 'search_history_state.dart';

class SearchHistoryCubit extends Cubit<SearchHistoryState> {
  FloatingSearchBarController searchController = FloatingSearchBarController();
  String searchQuery="";
  List<String>  filteredSearchHistory=[];
  String? selectedTerm;

  SearchHistoryCubit() : super(SearchHistoryInitial());

  /// to filter search term
  List<String> filterSearchTerms({
    String? filter,
  }) {
    if(filter!=null&&filter.trim()!=''){
      return filteredSearchHistory.reversed.where((term){return term.startsWith(filter);}).toList();
    }else{
      return filteredSearchHistory.reversed.toList();
    }
  }
/// cache searchHistory
  cacheSearchHistory()async{
    String jsonList = jsonEncode(filteredSearchHistory);
    await PrefService.putString(key: CacheKeys.searchHistory, value: jsonList);
  }
  Future<void> getSearchHistory()async{
    final jsonList = await PrefService.getString(key: CacheKeys.searchHistory);
if(jsonList!=null) {
  final List<String> historyList = await List<String>.from(jsonDecode(jsonList));;
  filteredSearchHistory = historyList;
}
  }
  void addSearchTerm(String term){
    if (filteredSearchHistory.contains(term)) {
      putSearchTermFirst(term);
      emit(SearchHistoryAddTerm());
      cacheSearchHistory();
      return;
    }
    filteredSearchHistory.add(term);
    filteredSearchHistory = filterSearchTerms(filter: null);
    cacheSearchHistory();
    emit(SearchHistoryAddTerm());

  }
  void deleteSearchTerm(String term){
    filteredSearchHistory.removeWhere((t)=> t==term);
    filterSearchTerms(filter: null);
    cacheSearchHistory();
    emit(SearchHistoryDeleteTerm());
  }
  void putSearchTermFirst(String term ){
    deleteSearchTerm(term);
    addSearchTerm(term);
  }
  void updateSearchQuery(query){
    searchQuery=query;
    filterSearchTerms(filter: query);
    emit(SearchHistoryUpdateQuery());
  }
//   @override
//   Future<void> close() {
//     return super.close();
//   }
}
