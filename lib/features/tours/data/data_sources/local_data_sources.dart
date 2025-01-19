import 'dart:convert';

import 'package:fursan_travel_app/features/tours/data/model/reservation_tour_model.dart';
import 'package:fursan_travel_app/features/tours/data/model/tour_details_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../utils/error/failure.dart';
import '../../../../utils/local_storage/cach_keys.dart';
import '../../../../utils/local_storage/cache_helper.dart';
import '../model/all_tours_model.dart';

abstract class ToursLocalDataSources {
  /// Tour Functions
  Future<Unit> cacheAllTours({required AllToursModel Tours});
  Future<Unit> cacheTourDetails({required TourDetailsModel tourDetails, required String Params});
  Future<AllToursModel> getAllTours();
  Future<TourDetailsModel> getTourDetail( {required String Params});
}

class ToursLocalDataSourcesImp implements ToursLocalDataSources {
  @override
  Future<Unit> cacheAllTours({required AllToursModel Tours}) async {
    final String cachedTours = await jsonEncode(Tours.toJsonList());
    await PrefService.putString(key: CacheKeys.allTours, value: cachedTours);
    return Future.value(unit);
  }

  @override
  Future<Unit> cacheTourDetails({required TourDetailsModel tourDetails , required String Params}) async {
    final String cachedTDetails = jsonEncode(tourDetails.toJson());
    await PrefService.putStringbyString(
        key: CacheKeys.tourDetails.name+Params, value: cachedTDetails);
    return Future.value(unit);
  }

  @override
  Future<AllToursModel> getAllTours() async {
    final jsonString = await PrefService.getString(key: CacheKeys.allTours);
    if (jsonString != null) {
      final json = jsonDecode(jsonString!);
      print(json);
      return AllToursModel.fromJsonList(json);
    } else {
      throw CacheFailure();
    }
  }

  @override
  Future<TourDetailsModel> getTourDetail({ required String Params}) async {
    final jsonString = await PrefService.getStringByString(key: CacheKeys.tourDetails.name+Params);
    if (jsonString != null) {

      final jsons = await json.decode(jsonString!);
      return TourDetailsModel.fromJson(jsons);
    } else {
      throw CacheFailure();
    }
  }
}
