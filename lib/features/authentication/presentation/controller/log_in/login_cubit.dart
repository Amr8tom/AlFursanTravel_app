import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:fursan_travel_app/features/authentication/data/models/user_login_model.dart';
import 'package:fursan_travel_app/features/authentication/domain/use_cases/login_use_case.dart';
import 'package:fursan_travel_app/utils/local_storage/cach_keys.dart';
import 'package:fursan_travel_app/utils/local_storage/cache_helper.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final LoginUseCase _loginUseCase;
  bool isGuest = true;
  LoginCubit(this._loginUseCase) : super(LoginInit());

  Future login() async {
    emit(LoginLoading());
    final result = await _loginUseCase.call(params: {
      "email": emailController.text.trim().toString(),
      "password": passwordController.text.trim().toString()
    });
    return result.fold((l) => emit(LoginFailure()), (model) {
      if (model.token != null) {
        isGuest = false;
          PrefService.putString(key: CacheKeys.token, value: model.token!);
         PrefService.putBoolean(key: CacheKeys.isGuest, value: false);
        isGuest =  PrefService.getBoolean(
            defaultValue: true, key: CacheKeys.isGuest);


        emit(LoginSuccess(model));
      } else {
        PrefService.putBoolean(key: CacheKeys.isGuest, value: true);
        isGuest = true;
        emit(LoginInit());
      }
    });
  }

  Future logOut() async {
    /// ToDo: need to log out from the server after take the api
    PrefService.putBoolean(key: CacheKeys.isGuest, value: true);
    isGuest = true;
  }

  Future checkIsGuestOrUser() async {
    isGuest = await PrefService.getBoolean(
        defaultValue: true, key: CacheKeys.isGuest);
  }

}
