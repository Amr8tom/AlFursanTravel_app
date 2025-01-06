import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/profile/domain/repository/repository.dart';

import '../../../../utils/error/failure.dart';
import '../../data/models/delete_account_model.dart';

class DeleteAccountUseCase{
  final ProfileRepository _repository;
  const DeleteAccountUseCase(this._repository);
  Future<Either<Failure, DeleteAccountModel>> call(){
    return _repository.deleteAccount();
  }

}