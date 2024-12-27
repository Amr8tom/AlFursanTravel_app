import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/profile/data/models/profile_data_model.dart';
import 'package:fursan_travel_app/utils/local_storage/cach_keys.dart';

import '../../../../utils/error/failure.dart';
import '../../../../utils/local_storage/cache_helper.dart';

abstract class ProfileLocalDataSources {
  Future<Unit> cahceProfileData({required Map<String, dynamic> json});
  Future<ProfileDataModel> getProfileData();
}

class ProfileLocalDataSourcesImp implements ProfileLocalDataSources {
  @override
  Future<Unit> cahceProfileData({required Map<String, dynamic> json}) async {
    final jsonString = jsonEncode(json);
    PrefService.putString(key: CacheKeys.profile, value: jsonString);
    return Future.value(unit);
  }

  @override
  Future<ProfileDataModel> getProfileData() async {
    final josnString = PrefService.getString(key: CacheKeys.profile);
    if (josnString != null) {
      final decodedJson = jsonDecode(josnString);
      return ProfileDataModel.fromJson(decodedJson);
    } else {
      throw CacheFailure();
    }
  }
}
