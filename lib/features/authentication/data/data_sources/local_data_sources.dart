import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/authentication/data/models/user_login_model.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';
import 'package:fursan_travel_app/utils/local_storage/cach_keys.dart';
import 'package:fursan_travel_app/utils/local_storage/cache_helper.dart';

abstract class AuthLocalDataSources {
  Future<Unit> cacheLoginData({required Map<String, dynamic> json});
  Future<UserLoginModel> getLoginData();
}
/// unneeded classes need to remove it later
class AuthLocalDataSourcesImp implements AuthLocalDataSources {
  @override
  Future<Unit> cacheLoginData({required Map<String, dynamic> json}) async {
    final jsonString = await jsonEncode(json);
    PrefService.putString(key: CacheKeys.loginData, value: jsonString);
    return Future.value(unit);
  }

  @override
  Future<UserLoginModel> getLoginData() async {
    final jsonString = await PrefService.getString(key: CacheKeys.loginData);
    if (jsonString != null) {
      final json = await jsonDecode(jsonString);
      return UserLoginModel.fromJson(json);
    } else {
      throw CacheFailure();
    }
  }
}
