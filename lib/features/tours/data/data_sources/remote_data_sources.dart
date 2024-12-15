import 'package:fursan_travel_app/features/tours/data/model/all_tours_model.dart';
import 'package:fursan_travel_app/features/tours/data/model/tour_details_model.dart';
import 'package:fursan_travel_app/features/tours/data/model/visa_ditails_model.dart';
import 'package:fursan_travel_app/utils/constants/api_constants.dart';
import 'package:fursan_travel_app/utils/dio/dio_helper.dart';

import '../model/all_visas_model.dart';

abstract class CategoriesRemoteDataSources {
  Future<AllToursModel> getAllTours();
  Future<TourDetailsModel> getTourDetails();
  Future<AllVisasModel> getAllVisas();
  Future<VisaDitailsModel> getVisaDetails();
}

class CategoriesRemoteDataSourcesImp implements CategoriesRemoteDataSources {
  final DioHelper dio;
  CategoriesRemoteDataSourcesImp(this.dio);
  @override
  Future<AllToursModel> getAllTours() async {
    final response = await dio.getData(URL: URL.allTours);
    return AllToursModel.fromJson(response);
  }

  @override
  Future<AllVisasModel> getAllVisas() async {
    final response = await dio.getData(URL: URL.allVisas);
    return AllVisasModel.fromJson(response);
  }

  @override
  Future<TourDetailsModel> getTourDetails() async {
    final response = await dio.getData(URL: URL.toursDetails);
    return TourDetailsModel.fromJson(response);
  }

  @override
  Future<VisaDitailsModel> getVisaDetails() async {
    final response = await dio.getData(URL: URL.visaDetails);
    return VisaDitailsModel.fromJson(response);
  }
}
