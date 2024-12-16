import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/visas/domain/repositories/repository.dart';

import '../../../../utils/error/failure.dart';
import '../../data/model/all_visas_model.dart';

class GetAllVisasUsecase {
  final VisasRepository repository;
  const GetAllVisasUsecase(this.repository);

  Future<Either<Failure, AllVisasModel>> call() {
    return repository.getAllVisas();
  }
}
