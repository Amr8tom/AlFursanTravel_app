import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:fursan_travel_app/features/service_locator/tours_services_locator.dart';
import 'package:fursan_travel_app/features/service_locator/visas_service_locator.dart';
import 'package:fursan_travel_app/utils/dio/dio_helper.dart';
import 'package:get_it/get_it.dart';
import '../../utils/connection/checkNetwork.dart';
import 'contact_us_service_locator.dart';
import 'navigation_servise_locator.dart';

final serviceLocator = GetIt.instance;

class DI {
  static execute() async {
    /// initial depended classes for all services
    serviceLocator.registerLazySingleton(() => DioHelper());
    serviceLocator.registerLazySingleton(() => DataConnectionChecker());
    serviceLocator.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(serviceLocator()));

    /// navigation
    await NavigationServiseLocator.execute(serviceLocator: serviceLocator);

    /// visa
    await VisasServiceLocator.execute(serviceLocator: serviceLocator);

    /// tours
    await ToursServicesLocator.execute(serviceLocator: serviceLocator);

    /// contact us
    await ContactUsServiceLocator.execute(serviceLocator);
  }
}
