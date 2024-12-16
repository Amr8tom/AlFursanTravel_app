import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/tours/domain/repositories/repositories.dart';

import '../../../../utils/error/failure.dart';
import '../../data/model/all_tours_model.dart';

class GetAllTourUseCase {
  final ToursRepository repository;
  const GetAllTourUseCase(this.repository);
  Future<Either<Failure, AllToursModel>> call() {
    return repository.getAllTours();
  }
}
