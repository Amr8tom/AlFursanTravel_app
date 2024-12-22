import 'package:dartz/dartz.dart';

import 'package:fursan_travel_app/features/home/data/models/gallary_model.dart';
import 'package:fursan_travel_app/utils/connection/checkNetwork.dart';

import 'package:fursan_travel_app/utils/error/failure.dart';

import '../../domain/repositories/repository.dart';
import '../data_sources/remote_data_sources.dart';

class HomeRepositoryImp implements HomeRepository {
  final NetworkInfo _networkInfo;
  final homeRemoteDataSource _remote;
  HomeRepositoryImp(this._networkInfo, this._remote);
  @override
  Future<Either<Failure, GallaryModel>> getGallaryData() async {
    if (await _networkInfo.isConnected) {
      try {
        final gallaryModel = await _remote.getGalaryData();
        return right(gallaryModel);
      } on ServerFailure {
        return left(ServerFailure(
            message: "================Server Error =============="));
      }
    } else {
      return left(CacheFailure());
    }
  }
}
