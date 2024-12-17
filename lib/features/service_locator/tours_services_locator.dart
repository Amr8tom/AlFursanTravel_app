import 'package:fursan_travel_app/features/tours/data/data_sources/local_data_sources.dart';
import 'package:fursan_travel_app/features/tours/data/data_sources/remote_data_sources.dart';
import 'package:fursan_travel_app/features/tours/domain/repositories/repositories.dart';
import 'package:fursan_travel_app/features/tours/domain/use_cases/get_all_tour_use_case.dart';
import 'package:get_it/get_it.dart';

import '../tours/data/repositories/repositories.dart';
import '../tours/domain/use_cases/get_tour_details_use_case.dart';
import '../tours/domain/use_cases/make_reservation_use_case.dart';
import '../tours/presentation/controllers/make_reservation/make_tour_reservation_cubit.dart';
import '../tours/presentation/controllers/tour_details/tour_details_cubit.dart';
import '../tours/presentation/controllers/tours/all_tours_cubit.dart';

class ToursServicesLocator {
  static Future<void> execute({required GetIt serviceLocator}) async {
    /// register data sources
    serviceLocator.registerLazySingleton<ToursLocalDataSources>(
        () => ToursLocalDataSourcesImp());
    serviceLocator.registerLazySingleton<ToursRemoteDataSources>(
        () => ToursRemoteDataSourcesImp(serviceLocator()));

    /// register repositories
    serviceLocator.registerLazySingleton<ToursRepository>(() =>
        ToursRepositoryImp(
            networkInfo: serviceLocator(),
            local: serviceLocator(),
            remote: serviceLocator()));

    /// register use cases
    serviceLocator.registerLazySingleton<GetTourDetailsUseCase>(
        () => GetTourDetailsUseCase(serviceLocator()));
    serviceLocator.registerLazySingleton<GetAllTourUseCase>(
        () => GetAllTourUseCase(serviceLocator()));
    serviceLocator.registerLazySingleton<MakeReservationUseCase>(
        () => MakeReservationUseCase(serviceLocator()));

    /// register cubits
    serviceLocator
        .registerFactory<AllToursCubit>(() => AllToursCubit(serviceLocator()));
    serviceLocator.registerFactory<TourDetailsCubit>(
        () => TourDetailsCubit(serviceLocator()));
    serviceLocator.registerFactory<MakeTourReservationCubit>(
        () => MakeTourReservationCubit(serviceLocator()));
  }
}
