import 'package:fursan_travel_app/utils/dio/dio_helper.dart';

import '../../../../utils/constants/api_constants.dart';
import '../../../../utils/error/failure.dart';
import '../model/Searched_item_list_model.dart';

abstract class SearchRemoteDataSources {
  Future<AllSearchItemsModel> getSearchItemList({required String query});
}

class SearchRemoteDataSourcesImp implements SearchRemoteDataSources {
  final DioHelper _dio;
  const SearchRemoteDataSourcesImp(this._dio);
  @override
  Future<AllSearchItemsModel> getSearchItemList(
      {required String query}) async {
try{
  final response = await _dio.getData(URL: "${URL.search}$query");
  return AllSearchItemsModel.fromJsonList(response);
} on ServerFailure {
      throw ServerFailure(message: "Server Failure");
    }
  }
}
