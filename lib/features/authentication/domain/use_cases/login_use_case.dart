import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/authentication/domain/repositories/repository.dart';

import '../../../../utils/error/failure.dart';
import '../../data/models/user_login_model.dart';

class LoginUseCase {
  final AuthenticationRepository _repository;
  const LoginUseCase(this._repository);
  Future<Either<Failure, UserLoginModel>> call(
      {required Map<String, dynamic> params}) async {
    return _repository.logIn(params: params);
  }
}
