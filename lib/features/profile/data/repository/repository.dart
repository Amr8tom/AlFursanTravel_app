import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/profile/data/models/delete_account_model.dart';

import 'package:fursan_travel_app/features/profile/data/models/profile_data_model.dart';
import 'package:fursan_travel_app/utils/connection/checkNetwork.dart';

import 'package:fursan_travel_app/utils/error/failure.dart';
import 'package:intl/intl.dart';

import '../../domain/repository/repository.dart';
import '../data_sources/loca_data_sources.dart';
import '../data_sources/remote_data_sources.dart';

class ProfileRepositoryImp implements ProfileRepository {
  final NetworkInfo networkInfo;
  final ProfileRemoteDataSources remote;
  final ProfileLocalDataSources local;
  const ProfileRepositoryImp(
      {required this.local, required this.remote, required this.networkInfo});

  @override
  Future<Either<Failure, ProfileDataModel>> getProfileData() async {
    if (await networkInfo.isConnected) {
      try {
        final profileModel = await remote.getProfileData();
        local.cahceProfileData(json: profileModel.toJson());
        return right(profileModel);
      } on ServerFailure {
        return left(ServerFailure(
            message: "=============== Server Failure =============="));
      }
    } else {
      try {
        final profileModel = await local.getProfileData();
        return right(profileModel);
      } on CacheFailure {
        return left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, DeleteAccountModel>> deleteAccount() async{
    if(await networkInfo.isConnected){
      final deleteModel=await remote.deleteAccount();
      return right(deleteModel);
    }else{
      return left(CacheFailure());
    }

  }
}
