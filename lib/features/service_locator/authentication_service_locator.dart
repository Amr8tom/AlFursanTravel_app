import 'package:fursan_travel_app/features/authentication/data/data_sources/local_data_sources.dart';
import 'package:fursan_travel_app/features/authentication/data/repositories/repository.dart';
import 'package:fursan_travel_app/features/authentication/domain/use_cases/log_out_use_case.dart';
import 'package:fursan_travel_app/features/authentication/domain/use_cases/login_use_case.dart';
import 'package:get_it/get_it.dart';

import '../authentication/data/data_sources/remote_data_sources.dart';
import '../authentication/domain/repositories/repository.dart';
import '../authentication/domain/use_cases/sign_up_use_case.dart';
import '../authentication/presentation/controller/log/login_cubit.dart';
import '../authentication/presentation/controller/sing_up/sing_up_cubit.dart';

class AuthenticationServiceLocator {
  static execute({required GetIt serviceLocator}) async {
    /// register data sources
    serviceLocator.registerLazySingleton<AuthLocalDataSources>(
        () => AuthLocalDataSourcesImp());
    serviceLocator.registerLazySingleton<AuthRemoteDataSources>(
        () => AuthRemoteDataSourcesImp(serviceLocator()));

    /// register repositories
    serviceLocator.registerLazySingleton<AuthenticationRepository>(() =>
        AuthenticationRepositoryImp(
            networkInfo: serviceLocator(),
            local: serviceLocator(),
            remote: serviceLocator()));

    /// register use cases
    serviceLocator.registerLazySingleton<LoginUseCase>(
        () => LoginUseCase(serviceLocator()));
    serviceLocator.registerLazySingleton<SignUpUseCase>(
        () => SignUpUseCase(serviceLocator()));
serviceLocator.registerLazySingleton<LogOutUseCase>(
        () => LogOutUseCase(serviceLocator()));

    /// register controllers
    /// here its as singleton to detect the user state around the whole app
    serviceLocator
        .registerFactory<LoginCubit>(()=> LoginCubit(serviceLocator(),serviceLocator()));
    serviceLocator
        .registerFactory<SingUpCubit>(() => SingUpCubit(serviceLocator()));
  }
}
