import 'package:fursan_travel_app/features/authentication/data/models/user_login_model.dart';
import 'package:fursan_travel_app/utils/dio/dio_helper.dart';

import '../../../../utils/constants/api_constants.dart';
import '../models/user_sgin_up_model.dart';

abstract class AuthRemoteDataSources {
  Future<UserLoginModel> login({required Map<String, dynamic> params});
  Future<void> logOut();
  Future<UserSginUpModel> singUp({required Map<String, dynamic> params});
}

class AuthRemoteDataSourcesImp implements AuthRemoteDataSources {
  final DioHelper _dio;
  const AuthRemoteDataSourcesImp(this._dio);
  @override
  Future<void> logOut() async {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<UserLoginModel> login({required Map<String, dynamic> params}) async {
    final response = await _dio.postData(URL: URL.login+"?email=a4343@gmail.com&password=123456");
    print(response);
    return UserLoginModel.fromJson(response);
  }

  @override
  Future<UserSginUpModel> singUp({required Map<String, dynamic> params}) async {
    final response = await _dio.postData(URL: URL.signIn, body: params);
    return UserSginUpModel.fromJson(response);
  }
}
