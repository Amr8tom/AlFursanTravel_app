import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/authentication/data/data_sources/remote_data_sources.dart';
import 'package:fursan_travel_app/features/authentication/data/models/log_out_model.dart';
import 'package:fursan_travel_app/features/authentication/data/models/user_login_model.dart';
import 'package:fursan_travel_app/utils/connection/checkNetwork.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';
import '../../domain/repositories/repository.dart';
import '../data_sources/local_data_sources.dart';
import '../models/user_sgin_up_model.dart';

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
        return right(logInModel);
      } on ServerFailure {
        return left(
            ServerFailure(message: "================= server error========="));
      }
    } else {
        return left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, LogOutModel>> logOut() async{
  if(await networkInfo.isConnected){
    final logoutModel=await remote.logOut();
    return right(logoutModel);
  }else{
    return left(CacheFailure());
  }
  }
}
