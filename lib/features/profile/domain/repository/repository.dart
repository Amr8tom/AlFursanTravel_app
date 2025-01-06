import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/profile/data/models/delete_account_model.dart';
import 'package:fursan_travel_app/features/profile/data/models/profile_data_model.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileDataModel>> getProfileData();
  Future<Either<Failure, DeleteAccountModel>> deleteAccount();
}
