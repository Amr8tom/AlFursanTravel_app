part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInit extends LoginState {}

final class LoginSuccess extends LoginState {
  final UserLoginModel _loginModel;
  LoginSuccess(this._loginModel);
}

final class LoginFailure extends LoginState {}

final class LoginLoading extends LoginState {}
