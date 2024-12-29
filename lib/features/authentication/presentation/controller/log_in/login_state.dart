part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInit extends LoginState {}

final class LoginUser extends LoginState {
  final UserLoginModel _loginModel;
  LoginUser(this._loginModel);
}

final class LoginFailure extends LoginState {}

final class LoginLoading extends LoginState {}
