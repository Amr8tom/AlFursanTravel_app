import 'package:dartz/dartz.dart';
import '../model/Searched_item_list_model.dart';


abstract class SearchLocalDataSources {
  Future<Unit> cacheLocalSearchHistory({required String query});
  Future<AllSearchItemsModel> getCachedSearchHistory({required String query});
}
class SearchLocalDataSourcesImp implements SearchLocalDataSources{

  @override
  Future<AllSearchItemsModel> getCachedSearchHistory({required String query}) {
    // TODO: implement getCachedSearchHistory
    throw UnimplementedError();
  }

  @override
  Future<Unit> cacheLocalSearchHistory({required String query}) {
    // TODO: implement cacheLocalSearchHistory
    throw UnimplementedError();
  }
}
