import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/tours/data/model/tour_details_model.dart';
import 'package:fursan_travel_app/features/tours/domain/repositories/repositories.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

class GetTourDetailsUseCase {
  final ToursRepository repository;
  const GetTourDetailsUseCase(this.repository);
  Future<Either<Failure, TourDetailsModel>> call() {
    return repository.getTourDetails();
  }
}
