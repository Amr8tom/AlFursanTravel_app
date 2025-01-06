import 'package:dartz/dartz.dart';

import '../../../../utils/error/failure.dart';
import '../../data/models/log_out_model.dart';
import '../repositories/repository.dart';

class LogOutUseCase{
  final AuthenticationRepository _repository;
  const LogOutUseCase(this._repository);
  Future<Either<Failure, LogOutModel>>  call(){
    return _repository.logOut();
  }
}