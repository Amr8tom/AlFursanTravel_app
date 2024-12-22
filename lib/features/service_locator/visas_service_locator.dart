import 'package:fursan_travel_app/features/visas/data/data_sources/local_data_sources.dart';
import 'package:fursan_travel_app/features/visas/data/data_sources/remote_data_scources.dart';
import 'package:fursan_travel_app/features/visas/data/repositories/repository.dart';
import 'package:fursan_travel_app/features/visas/domain/repositories/repository.dart';
import 'package:fursan_travel_app/features/visas/domain/use_cases/get_all_visas_use_case.dart';
import 'package:fursan_travel_app/features/visas/domain/use_cases/get_visa_detail_use_case.dart';
import 'package:fursan_travel_app/features/visas/domain/use_cases/make_visa_reservation_use_case.dart';
import 'package:get_it/get_it.dart';
import '../visas/presentation/controllers/all_visas/get_all_visas_cubit.dart';
import '../visas/presentation/controllers/make_reservation/make_visa_reservation_cubit.dart';
import '../visas/presentation/controllers/visa_details/visa_details_cubit.dart';

class VisasServiceLocator {
  static Future<void> execute({required GetIt serviceLocator}) async {
    /// register dataSources
    serviceLocator.registerLazySingleton<VisasLocalDataSources>(
        () => VisasLocalDataSourcesImp());
    serviceLocator.registerLazySingleton<VisasRemoteDataSources>(
        () => VisasRemoteDataSourcesImp(dio: serviceLocator()));

    /// register repositories
    serviceLocator.registerLazySingleton<VisasRepository>(() =>
        VisasRepositoryImp(
            networkInfo: serviceLocator(),
            local: serviceLocator(),
            remote: serviceLocator()));

    /// register use cases
    serviceLocator.registerLazySingleton<GetAllVisasUsecase>(
        () => GetAllVisasUsecase(serviceLocator()));
    serviceLocator.registerLazySingleton<GetVisaDetailUseCase>(
        () => GetVisaDetailUseCase(serviceLocator()));
    serviceLocator.registerLazySingleton<MakeVisaReservationUseCase>(
        () => MakeVisaReservationUseCase(serviceLocator()));

    /// register visas cubit
    serviceLocator.registerFactory<GetAllVisasCubit>(
        () => GetAllVisasCubit(serviceLocator()));
    serviceLocator.registerFactory<MakeVisaReservationCubit>(
        () => MakeVisaReservationCubit(serviceLocator()));
    serviceLocator.registerFactory<VisaDetailsCubit>(
        () => VisaDetailsCubit(serviceLocator()));
  }
}
