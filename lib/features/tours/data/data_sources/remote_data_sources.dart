import 'package:fursan_travel_app/features/tours/data/model/all_tours_model.dart';
import 'package:fursan_travel_app/features/tours/data/model/tour_details_model.dart';
import 'package:fursan_travel_app/utils/constants/api_constants.dart';
import 'package:fursan_travel_app/utils/dio/dio_helper.dart';

import '../../../../utils/error/failure.dart';
import '../model/reservation_tour_model.dart';

abstract class ToursRemoteDataSources {
  Future<AllToursModel> getAllTours();

  Future<TourDetailsModel> getTourDetails({required String params});

  Future<ReservationTourModel> makeReservationTour();
}

class ToursRemoteDataSourcesImp implements ToursRemoteDataSources {
  final DioHelper dio;

  ToursRemoteDataSourcesImp(this.dio);

  @override
  Future<AllToursModel> getAllTours() async {
    try {
      final response = await dio.getData(URL: URL.allTours);
      return AllToursModel.fromJsonList(response);
    } on ServerFailure {
      throw ServerFailure(message: "Server Failure");
    }
  }

  @override
  Future<TourDetailsModel> getTourDetails({required String params}) async {
    try {
      final response = await dio.getData(URL: "${URL.toursDetails}$params");
      return TourDetailsModel.fromJson(response);
    } on ServerFailure {
      throw ServerFailure(message: "Server Failure");
    }
  }

  @override
  Future<ReservationTourModel> makeReservationTour() async {
    try {
      final response = await dio.getData(URL: URL.tourReservation);
      return ReservationTourModel.fromJson(response);
    } on ServerFailure {
      throw ServerFailure(message: "Server Failure");
    }
  }
}
