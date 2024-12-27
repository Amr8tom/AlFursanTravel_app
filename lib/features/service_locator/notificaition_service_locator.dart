import 'package:fursan_travel_app/features/notifications/data/data_sources/local_data_sources.dart';
import 'package:fursan_travel_app/features/notifications/data/repositories/repository.dart';
import 'package:fursan_travel_app/features/notifications/domain/repositories/repository.dart';
import 'package:fursan_travel_app/features/notifications/domain/use_cases/get_notification_use_case.dart';
import 'package:get_it/get_it.dart';

import '../notifications/data/data_sources/remote_data_sources.dart';
import '../notifications/presentation/controller/notifications/notifications_cubit.dart';

class NotificaitionServiceLocator {
  static Future<void> execute({required GetIt serviceLocator}) async {
    /// data sources
    serviceLocator.registerLazySingleton<NotificationLocalDataSources>(
        () => NotificationLocalDataSourcesImp());
    serviceLocator.registerLazySingleton<NotificationRemoteDataSources>(
        () => NotificationRemoteDataSourcesImp(serviceLocator()));

    /// repositories
    serviceLocator.registerLazySingleton<NotificationRepository>(() =>
        NotificationRepositoryImp(
            serviceLocator(), serviceLocator(), serviceLocator()));

    /// use cases
    serviceLocator.registerLazySingleton<GetNotificationUseCase>(
        () => GetNotificationUseCase(serviceLocator()));

    /// controllers
    serviceLocator.registerFactory<NotificationsCubit>(
        () => NotificationsCubit(serviceLocator()));
  }
}
