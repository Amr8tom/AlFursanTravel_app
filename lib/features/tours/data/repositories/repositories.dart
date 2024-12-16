import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/tours/data/data_sources/local_data_sources.dart';
import 'package:fursan_travel_app/features/tours/data/data_sources/remote_data_sources.dart';
import 'package:fursan_travel_app/features/tours/data/model/all_tours_model.dart';
import 'package:fursan_travel_app/features/tours/data/model/tour_details_model.dart';
import 'package:fursan_travel_app/features/visas/data/model/visa_reservation_model.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

import '../../../../utils/connection/checkNetwork.dart';
import '../../domain/repositories/repositories.dart';
import '../model/reservation_tour_model.dart';

class ToursRepositoryImp extends ToursRepository {
  final ToursLocalDataSources local;
  final ToursRemoteDataSources remote;
  final NetworkInfo networkInfo;
  ToursRepositoryImp(
      {required this.local, required this.remote, required this.networkInfo});

  @override
  Future<Either<Failure, AllToursModel>> getAllTours() async {
    if (await networkInfo.isConnected) {
      try {
        final allToursModel = await remote.getAllTours();
        local.cacheAllTours(Tours: allToursModel);
        return Right(allToursModel);
      } on ServerFailure {
        throw ServerFailure(
            message: "=============== server failure ================");
      }
    } else {
      try {
        final allToursModel = await local.getAllTours();
        return right(allToursModel);
      } on CacheFailure {
        throw CacheFailure();
      }
    }
  }

  @override
  Future<Either<Failure, TourDetailsModel>> getTourDetails() async {
    if (await networkInfo.isConnected) {
      try {
        final tourDetailsModel = await remote.getTourDetails();
        return right(tourDetailsModel);
      } on ServerFailure {
        throw ServerFailure(
            message: "================= server failure =============");
      }
    } else {
      try {
        final tourDetailsModel = await local.getTourDetail();
        return right(tourDetailsModel);
      } on CacheFailure {
        throw CacheFailure();
      }
    }
  }

  @override
  Future<Either<Failure, ReservationTourModel>> makeTourReservation(
      {required Map<String, dynamic> params}) async {
    if (await networkInfo.isConnected) {
      try {
        final makeReservationModel = await remote.makeReservationTour();
        return right(makeReservationModel);
      } on ServerFailure {
        return left(
            ServerFailure(message: "================== serverFailur========="));
      }
    } else {
      return left(CacheFailure());
    }
  }
}
