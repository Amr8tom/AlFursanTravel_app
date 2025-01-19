import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

import '../../../../utils/local_storage/cach_keys.dart';
import '../../../../utils/local_storage/cache_helper.dart';
import '../models/gallary_model.dart';

abstract class LocalHomeDataSources{
  Future<Unit> cacheGalaryData({required GallaryModel model});
  Future<GallaryModel> getGalaryData();

}
class LocalHomeDataSourcesImp implements LocalHomeDataSources{
  @override
  Future<Unit> cacheGalaryData({required GallaryModel model}) async{
    final String cachedTours = await jsonEncode(model.toJson());
    await PrefService.putString(key: CacheKeys.gallary, value: cachedTours);
    return Future.value(unit);
  }

  @override
  Future<GallaryModel> getGalaryData() async{
    final  jsonString= await PrefService.getString(key: CacheKeys.gallary);
   if(jsonString!=null){
     final json=await jsonDecode(jsonString) ;
     return GallaryModel.fromJson(json);
   }else{
     throw CacheFailure();
   }
  }
 }