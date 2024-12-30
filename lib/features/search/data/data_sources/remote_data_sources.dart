import 'package:fursan_travel_app/features/search/data/model/searchedItemListModel.dart';
import 'package:fursan_travel_app/utils/dio/dio_helper.dart';

import '../../../../utils/constants/api_constants.dart';

abstract class SearchRemoteDataSources {
  Future<SearchedItemListModel> getSearchItemList({required String query});
}

class SearchRemoteDataSourcesImp implements SearchRemoteDataSources {
  final DioHelper _dio;
  const SearchRemoteDataSourcesImp(this._dio);
  @override
  Future<SearchedItemListModel> getSearchItemList(
      {required String query}) async {
    final response = _dio.postData(URL: URL.search);
    return SearchedItemListModel.fromJson(response);
  }
}
