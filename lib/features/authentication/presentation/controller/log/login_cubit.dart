import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:fursan_travel_app/features/authentication/data/models/log_out_model.dart';
import 'package:fursan_travel_app/features/authentication/data/models/user_login_model.dart';
import 'package:fursan_travel_app/features/authentication/domain/use_cases/log_out_use_case.dart';
import 'package:fursan_travel_app/features/authentication/domain/use_cases/login_use_case.dart';
import 'package:fursan_travel_app/utils/local_storage/cach_keys.dart';
import 'package:fursan_travel_app/utils/local_storage/cache_helper.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final LoginUseCase _loginUseCase;
  final LogOutUseCase _logOutUseCase;
  bool isGuest = true;

  LoginCubit(this._loginUseCase, this._logOutUseCase) : super(LoginInit());

  /// login and change user state , register token and user state
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
        PrefService.putBoolean(key: CacheKeys.isGuest, value: isGuest);
        isGuest =
            PrefService.getBoolean(defaultValue: true, key: CacheKeys.isGuest);

        emit(LoginSuccess(model));
      } else {
        isGuest = true;
        PrefService.putBoolean(key: CacheKeys.isGuest, value: isGuest);
        emit(LoginInit());
      }
    });
  }

  /// log out and change user state
  Future logOut() async {
    final result = await _logOutUseCase.call();
    return result.fold((f) => emit(LogOutFailure()), (model) {
      isGuest = true;
      PrefService.putString(key: CacheKeys.token, value: "");
      PrefService.putBoolean(key: CacheKeys.isGuest, value: isGuest);
      emit(LogOutSuccess(model));
    });
  }

  /// check the user state
  Future checkIsGuestOrUser() async {
    isGuest = await PrefService.getBoolean(
        defaultValue: true, key: CacheKeys.isGuest);
  }
}
