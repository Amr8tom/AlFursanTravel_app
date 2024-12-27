import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/profile/data/models/profile_data_model.dart';
import 'package:fursan_travel_app/features/profile/domain/repository/repository.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

class GetProfileDataUseCase {
  final ProfileRepository _repository;
  const GetProfileDataUseCase(this._repository);
  Future<Either<Failure, ProfileDataModel>> call() {
    return _repository.getProfileData();
  }
}
