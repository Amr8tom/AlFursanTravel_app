import 'package:fursan_travel_app/features/authentication/data/models/log_out_model.dart';
import 'package:fursan_travel_app/features/authentication/data/models/user_login_model.dart';
import 'package:fursan_travel_app/utils/dio/dio_helper.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

import '../../../../utils/constants/api_constants.dart';
import '../models/user_sgin_up_model.dart';

abstract class AuthRemoteDataSources {
  Future<UserLoginModel> login({required Map<String, dynamic> params});

  Future<LogOutModel> logOut();

  Future<UserSginUpModel> singUp({required Map<String, dynamic> params});
}

class AuthRemoteDataSourcesImp implements AuthRemoteDataSources {
  final DioHelper _dio;

  const AuthRemoteDataSourcesImp(this._dio);

  @override
  Future<UserLoginModel> login({required Map<String, dynamic> params}) async {
    try {
      final response = await _dio.postData(
          URL: URL.login,body: params);
      print(response);
      return UserLoginModel.fromJson(response);
    } on ServerFailure {
      throw ServerFailure(message: "Server Failure");
    }
  }

  @override
  Future<UserSginUpModel> singUp({required Map<String, dynamic> params}) async {
    try {
      final response = await _dio.postData(URL: URL.signIn, body: params);
      return UserSginUpModel.fromJson(response);
    } on ServerFailure {
      throw ServerFailure(message: "Server Failure");
    }
  }

  @override
  Future<LogOutModel> logOut() async {
    try {
      final response = await _dio.postData(URL: URL.logOut);
      return LogOutModel.fromJson(response);
    } on ServerFailure {
      throw ServerFailure(message: "Server Failure");
    }
  }
}
