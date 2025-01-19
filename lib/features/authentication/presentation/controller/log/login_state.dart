part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInit extends LoginState {}

final class LoginSuccess extends LoginState {
  final UserLoginModel loginModel;
  LoginSuccess(this.loginModel);
}

final class LoginFailure extends LoginState {}
final class LogOutFailure extends LoginState {}
final class LogOutSuccess extends LoginState {
  final LogOutModel logOutModel;
  LogOutSuccess(this.logOutModel);
}

final class LoginLoading extends LoginState {}
