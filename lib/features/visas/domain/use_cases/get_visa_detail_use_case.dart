import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/visas/domain/repositories/repository.dart';

import '../../../../utils/error/failure.dart';
import '../../data/model/visa_details_model.dart';

class GetVisaDetailUseCase {
  final VisasRepository _repository;
  const GetVisaDetailUseCase(this._repository);

  Future<Either<Failure, VisaDetailsModel>> call() {
    return _repository.getVisaDetails();
  }
}
