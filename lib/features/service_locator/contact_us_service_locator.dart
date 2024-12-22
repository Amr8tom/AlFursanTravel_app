import 'package:fursan_travel_app/features/contact_us/data/data_sources/remote_data_sources.dart';
import 'package:fursan_travel_app/features/contact_us/data/repositories/repository.dart';
import 'package:fursan_travel_app/features/contact_us/domain/repositories/repository.dart';
import 'package:fursan_travel_app/features/contact_us/domain/use_cases/send_contact_us_form_use_case.dart';
import 'package:fursan_travel_app/features/contact_us/persentation/controllers/contact_us_cubit.dart';
import 'package:get_it/get_it.dart';

class ContactUsServiceLocator {
  static Future<void> execute(GetIt serviceLocator) async {
    /// register dataSources
    serviceLocator.registerLazySingleton<ContactUsRemoteDataSources>(
        () => ContactUsRemoteDataSourcesImp(serviceLocator()));

    /// register repository
    serviceLocator.registerLazySingleton<ContactUsRepository>(() =>
        ContactUsRepositoryImp(
            NetWorkInfo: serviceLocator(), remote: serviceLocator()));

    /// register use cases
    serviceLocator.registerLazySingleton<SendContactUsFormUseCase>(
        () => SendContactUsFormUseCase(serviceLocator()));

    /// register cubit
    serviceLocator.registerFactory<ContactUsCubit>(
        () => ContactUsCubit(serviceLocator()));
  }
}
