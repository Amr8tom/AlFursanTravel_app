import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/tours/data/model/reservation_tour_model.dart';
import 'package:fursan_travel_app/features/tours/domain/repositories/repositories.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

class MakeReservationUseCase {
  final ToursRepository repository;
  const MakeReservationUseCase(this.repository);
  Future<Either<Failure, ReservationTourModel>> call(
      {required Map<String, dynamic> params}) {
    return repository.makeTourReservation(params: params);
  }
}
