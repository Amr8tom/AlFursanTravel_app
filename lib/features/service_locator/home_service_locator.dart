import 'package:fursan_travel_app/features/home/data/data_sources/local_home_data_spurces.dart';
import 'package:fursan_travel_app/features/home/data/data_sources/remote_data_sources.dart';
import 'package:fursan_travel_app/features/home/data/repositories/repository.dart';
import 'package:fursan_travel_app/features/home/domain/use_cases/get_gallary_images_use_case.dart';
import 'package:get_it/get_it.dart';

import '../home/domain/repositories/repository.dart';
import '../home/presentation/controllers/gallary/gallary_cubit.dart';

class HomeServiceLocator {
  static Future<void> execute(GetIt serviceLocator) async {
    /// register dataSources
serviceLocator.registerLazySingleton<LocalHomeDataSources>(()=>LocalHomeDataSourcesImp());
    serviceLocator.registerLazySingleton<homeRemoteDataSource>(
        () => homeRemoteDataSourceImp(serviceLocator()));

    /// register repository
    serviceLocator.registerLazySingleton<HomeRepository>(
        () => HomeRepositoryImp(serviceLocator(),serviceLocator(),serviceLocator()));

    /// register use cases
    serviceLocator.registerLazySingleton<HomeImagesUseCase>(
        () => HomeImagesUseCase(serviceLocator()));

    /// register cubits
    serviceLocator
        .registerFactory<GallaryCubit>(() => GallaryCubit(serviceLocator()));
  }
}
