import 'dart:convert';
import 'package:fursan_travel_app/features/visas/data/model/all_visas_model.dart';
import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';
import 'package:fursan_travel_app/utils/local_storage/cach_keys.dart';
import 'package:fursan_travel_app/utils/local_storage/cache_helper.dart';
import '../model/visa_details_model.dart';

abstract class VisasLocalDataSources {
  Future<Unit> cacheAllVisas({required AllVisasModel allVisas});
  Future<Unit> cacheVisaDetails({required VisaDetailsModel visaDetails});
  Future<AllVisasModel> getAllVisas();
  Future<VisaDetailsModel> getVisaDetails();
}

class VisasLocalDataSourcesImp implements VisasLocalDataSources {
  @override
  Future<Unit> cacheAllVisas({required AllVisasModel allVisas}) async {
    final cachedVisas = jsonEncode(allVisas);
    await PrefService.putString(key: CacheKeys.allVisas, value: cachedVisas);
    return Future.value(unit);
  }

  @override
  Future<Unit> cacheVisaDetails({required VisaDetailsModel visaDetails}) async {
    final cachedVisaDetails = jsonEncode(VisaDetailsModel());
    await PrefService.putString(
        key: CacheKeys.visaDetails, value: cachedVisaDetails);
    return Future.value(unit);
  }

  @override
  Future<AllVisasModel> getAllVisas() async {
    final jsonString = await PrefService.getString(key: CacheKeys.allVisas);

    if (jsonString != null) {
      final json = jsonDecode(jsonString);
      return AllVisasModel.fromJson(json);
    } else {
      throw CacheFailure();
    }
  }

  @override
  Future<VisaDetailsModel> getVisaDetails() async {
    final jsonString = await PrefService.getString(key: CacheKeys.visaDetails);
    if (jsonString != null) {
      final json = jsonDecode(jsonString);
      return VisaDetailsModel.fromJson(json);
    } else {
      throw CacheFailure();
    }
  }
}
