import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/search/data/model/searchedItemListModel.dart';

abstract class SearchLocalDataSources {
  Future<Unit> cacheLocalSearchHistory({required String query});
  Future<SearchedItemListModel> getCachedSearchHistory({required String query});
}
// class SearchLocalDataSourcesImp implements SearchLocalDataSources{
//   @override
//   Future<Unit> cacheLocalSearchHistory({required String query) {
//     // TODO: implement cacheLocalSearchHistory
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<SearchedItemListModel> getCachedSearchHistory({required String query}) {
//     // TODO: implement getCachedSearchHistory
//     throw UnimplementedError();
//   }
// }
