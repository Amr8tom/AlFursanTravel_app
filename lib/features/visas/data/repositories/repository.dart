import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/visas/data/data_sources/local_data_sources.dart';
import 'package:fursan_travel_app/features/visas/data/data_sources/remote_data_scources.dart';
import 'package:fursan_travel_app/features/visas/data/model/all_visas_model.dart';
import 'package:fursan_travel_app/features/visas/data/model/visa_reservation_model.dart';
import 'package:fursan_travel_app/features/visas/domain/repositories/repository.dart';
import 'package:fursan_travel_app/utils/connection/checkNetwork.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

import '../model/visa_details_model.dart';

class VisasRepositoryImp implements VisasRepository {
  VisasRemoteDataSources remote;
  VisasLocalDataSources local;
  NetworkInfo networkInfo;
  VisasRepositoryImp(
      {required this.networkInfo, required this.local, required this.remote});

  /// get all visas
  @override
  Future<Either<Failure, AllVisasModel>> getAllVisas() async {
    if (await networkInfo.isConnected) {
      try {
        final allVisasModel = await remote.getAllVisas();
        return right(allVisasModel);
      } on ServerFailure {
        return left(ServerFailure(
            message: "================ server Failure=============="));
      }
    } else {
      try {
        final allVisasModel = await local.getAllVisas();
        return right(allVisasModel);
      } on CacheFailure {
        return left(CacheFailure());
      }
    }
  }

  /// get visa details
  @override
  Future<Either<Failure, VisaDetailsModel>> getVisaDetails() async {
    if (await networkInfo.isConnected) {
      try {
        final visaDetailsModel = await remote.getVisaDetails();
        return right(visaDetailsModel);
      } on ServerFailure {
        return left(ServerFailure(
            message: "================ server Failure=============="));
      }
    } else {
      try {
        final visaDetailsModel = await local.getVisaDetails();
        return right(visaDetailsModel);
      } on CacheFailure {
        return left(CacheFailure());
      }
    }
  }

  /// make visa reservations

  @override
  Future<Either<Failure, VisaReservationModel>> makeVisaReservation(
      {required Map<String, dynamic> params}) async {
    if (await networkInfo.isConnected) {
      try {
        final makeVisaReservationModel =
            await remote.makeVisaReservation(params: params);
        return right(makeVisaReservationModel);
      } on ServerFailure {
        return left(ServerFailure(
            message: "================ server Failure=============="));
      }
    } else {
      return left(CacheFailure());
    }
  }
}
