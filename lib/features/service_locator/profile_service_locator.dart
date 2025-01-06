import 'package:fursan_travel_app/features/profile/data/data_sources/remote_data_sources.dart';
import 'package:fursan_travel_app/features/profile/data/repository/repository.dart';
import 'package:fursan_travel_app/features/profile/domain/repository/repository.dart';
import 'package:fursan_travel_app/features/profile/domain/use_cases/get_profile_data_use_case.dart';
import 'package:fursan_travel_app/features/profile/presentation/controllers/profile_data/get_profile_data_cubit.dart';
import 'package:get_it/get_it.dart';

import '../profile/data/data_sources/loca_data_sources.dart';
import '../profile/domain/use_cases/delete_account_use_case.dart';
import '../profile/presentation/controllers/delete_account/delete_account_cubit.dart';

class ProfileServiceLocator {
  static Future<void> execute({required GetIt serviceLocator}) async {
    /// register data sources
    serviceLocator.registerLazySingleton<ProfileRemoteDataSources>(
        () => ProfileRemoteDataSourcesImp(serviceLocator()));
    serviceLocator.registerLazySingleton<ProfileLocalDataSources>(
        () => ProfileLocalDataSourcesImp());

    /// register repositories
    serviceLocator.registerLazySingleton<ProfileRepository>(() =>
        ProfileRepositoryImp(
            local: serviceLocator(),
            remote: serviceLocator(),
            networkInfo: serviceLocator()));

    /// register use cases

    serviceLocator.registerLazySingleton<GetProfileDataUseCase>(
        () => GetProfileDataUseCase(serviceLocator()));
    serviceLocator.registerLazySingleton<DeleteAccountUseCase>(
        () => DeleteAccountUseCase(serviceLocator()));

    /// register cubits
    serviceLocator.registerFactory<DeleteAccountCubit>(
        () => DeleteAccountCubit(serviceLocator()));
    serviceLocator.registerFactory<GetProfileDataCubit>(
        () => GetProfileDataCubit(serviceLocator()));
  }
}
