import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/visas/data/model/all_visas_model.dart';
import 'package:fursan_travel_app/features/visas/data/model/visa_reservation_model.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

import '../../data/model/visa_details_model.dart';

abstract class VisasRepository {
  Future<Either<Failure, AllVisasModel>> getAllVisas();
  Future<Either<Failure, VisaDetailsModel>> getVisaDetails(
      {required String params});
  Future<Either<Failure, VisaReservationModel>> makeVisaReservation(
      {required Map<String, dynamic> params});
}
