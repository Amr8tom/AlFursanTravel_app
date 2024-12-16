import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/visas/data/model/visa_reservation_model.dart';
import 'package:fursan_travel_app/features/visas/domain/repositories/repository.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

class MakeVisaReservationUseCase {
  final VisasRepository _repository;
  const MakeVisaReservationUseCase(this._repository);
  Future<Either<Failure, VisaReservationModel>> call(
      {required Map<String, dynamic> params}) async {
    return _repository.makeVisaReservation(params: params);
  }
}
