import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/search/data/data_sources/local_data_sources.dart';
import 'package:fursan_travel_app/features/search/data/data_sources/remote_data_sources.dart';
import 'package:fursan_travel_app/features/search/domain/repositories/repository.dart';
import 'package:fursan_travel_app/utils/connection/checkNetwork.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

import '../model/Searched_item_list_model.dart';

class SearchRepositoryImp implements SearchRepository {
  final NetworkInfo _networkInfo;
  final SearchRemoteDataSources _remoteDataSources;
  final SearchLocalDataSources _localDataSources;
  const SearchRepositoryImp(
      this._localDataSources, this._remoteDataSources, this._networkInfo);
  @override
  Future<Either<Failure, AllSearchItemsModel>> searchForItem(
      {required String query}) async {
    if (await _networkInfo.isConnected) {
      try {
        final searchModel =
            await _remoteDataSources.getSearchItemList(query: query);
        // _localDataSources.cacheLocalSearchHistory(query: query);
        return right(searchModel);
      } on ServerFailure {
        return left(ServerFailure(message: "===== server failure ========"));
      }
    } else {
      try {
        final searchModel =
            await _localDataSources.getCachedSearchHistory(query: query);
        return right(searchModel);
      } on CacheFailure {
        return left(CacheFailure());
      }
    }
  }
}
