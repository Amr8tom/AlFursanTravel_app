import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/authentication/data/models/user_login_model.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

import '../../data/models/log_out_model.dart';
import '../../data/models/user_sgin_up_model.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, UserLoginModel>> logIn(
      {required Map<String, dynamic> params});
  Future<Either<Failure, LogOutModel>> logOut();
  Future<Either<Failure, UserSginUpModel>> SignUp(
      {required Map<String, dynamic> params});
}
