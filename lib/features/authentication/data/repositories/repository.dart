import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/authentication/data/data_sources/remote_data_sources.dart';
import 'package:fursan_travel_app/features/authentication/data/models/user_login_model.dart';
import 'package:fursan_travel_app/features/authentication/data/models/user_sgin_in_model.dart';
import 'package:fursan_travel_app/utils/connection/checkNetwork.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';
import '../../domain/repositories/repository.dart';
import '../data_sources/local_data_sources.dart';

class AuthenticationRepositoryImp implements AuthenticationRepository {
  final AuthLocalDataSources local;
  final AuthRemoteDataSources remote;
  final NetworkInfo networkInfo;
  AuthenticationRepositoryImp(
      {required this.networkInfo, required this.local, required this.remote});

  @override
  Future<Either<Failure, UserSginUpModel>> SignUp(
      {required Map<String, dynamic> params}) async {
    if (await networkInfo.isConnected) {
      try {
        final signUpModel = await remote.singUp(params: params);
        final json = signUpModel.toJson();
        await local.cacheLoginData(json: json);
        return right(signUpModel);
      } on ServerFailure {
        return left(
            ServerFailure(message: "============ server failure =========="));
      }
    } else {
      return left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, UserLoginModel>> logIn(
      {required Map<String, dynamic> params}) async {
    if (await networkInfo.isConnected) {
      try {
        final logInModel = await remote.login(params: params);
        await local.cacheLoginData(json: logInModel.toJson());
        return right(logInModel);
      } on ServerFailure {
        return left(
            ServerFailure(message: "================= server error========="));
      }
    } else {
      try {
        final logInModel = await local.getLoginData();
        return right(logInModel);
      } on CacheFailure {
        return left(CacheFailure());
      }
    }
  }
}
