import 'package:fursan_travel_app/features/search/data/data_sources/local_data_sources.dart';
import 'package:fursan_travel_app/features/search/data/data_sources/remote_data_sources.dart';
import 'package:fursan_travel_app/features/search/domain/repositories/repository.dart';
import 'package:fursan_travel_app/features/search/domain/use_cases/search_for_item_use_case.dart';
import 'package:fursan_travel_app/features/search/presentation/controllers/search_cubit/search_cubit.dart';
import 'package:get_it/get_it.dart';

import '../search/data/repositories/repository.dart';

class SearchServiceLocator {
  static execute({required GetIt serviceLocator}) async {
    /// register dataSources
    /// Todo: dont forget to add local data Sources
    // serviceLocator.registerSingleton<SearchLocalDataSources>();
    serviceLocator.registerLazySingleton<SearchRemoteDataSources>(
        () => SearchRemoteDataSourcesImp(serviceLocator()));

    /// register repositories
    serviceLocator.registerLazySingleton<SearchRepository>(() =>
        SearchRepositoryImp(
            serviceLocator(), serviceLocator(), serviceLocator()));

    /// register use case
    serviceLocator.registerLazySingleton<SearchForItemUseCase>(
        () => SearchForItemUseCase(serviceLocator()));

    /// registger search cubit
    serviceLocator
        .registerFactory<SearchCubit>(() => SearchCubit(serviceLocator()));
  }
}
