import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/authentication/domain/repositories/repository.dart';

import '../../../../utils/error/failure.dart';
import '../../data/models/user_sgin_in_model.dart';

class SignUpUseCase {
  final AuthenticationRepository _repository;
  const SignUpUseCase(this._repository);
  Future<Either<Failure, UserSginUpModel>> call(
      {required Map<String, dynamic> params}) async {
    return _repository.SignUp(params: params);
  }
}
