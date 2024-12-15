import 'dart:convert';

import 'package:fursan_travel_app/features/tours/data/model/tour_details_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../utils/error/failure.dart';
import '../../../../utils/local_storage/cach_keys.dart';
import '../../../../utils/local_storage/cache_helper.dart';
import '../model/all_tours_model.dart';

abstract class CategoriesLocalDataSources {
  /// Tour Functions
  Future<Unit> cacheAllTours({required AllToursModel Tours});
  Future<Unit> cacheTourDetails({required TourDetailsModel tourDetails});
  Future<AllToursModel> getAllTours();
  Future<TourDetailsModel> getTourDetail();
}

class CategoriesLocalDataSourcesImp implements CategoriesLocalDataSources {
  @override
  Future<Unit> cacheAllTours({required AllToursModel Tours}) async {
    final cachedTours = jsonEncode(Tours);
    await PrefService.putString(key: CacheKeys.allTours, value: cachedTours);
    return Future.value(unit);
  }

  @override
  Future<Unit> cacheTourDetails({required TourDetailsModel tourDetails}) async {
    final cachedTDetails = jsonEncode(tourDetails);
    await PrefService.putString(
        key: CacheKeys.tourDetails, value: cachedTDetails);
    return Future.value(unit);
  }

  @override
  Future<AllToursModel> getAllTours() async {
    final jsonString = await PrefService.getString(key: CacheKeys.allTours);
    if (jsonString != null) {
      final json = jsonDecode(jsonString!);
      return AllToursModel.fromJson(json);
    } else {
      throw CacheFailure();
    }
  }

  @override
  Future<TourDetailsModel> getTourDetail() async {
    final jsonString = await PrefService.getString(key: CacheKeys.tourDetails);
    if (jsonString != null) {
      final jsons = await json.decode(jsonString!);
      return TourDetailsModel.fromJson(jsons);
    } else {
      throw CacheFailure();
    }
  }
}
