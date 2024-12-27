import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/notifications/data/models/notification_model.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';
import '../repositories/repository.dart';

class GetNotificationUseCase {
  final NotificationRepository _notificationRepository;
  const GetNotificationUseCase(this._notificationRepository);
  Future<Either<Failure, NotificationModel>> call() async {
    return _notificationRepository.getNotifications();
  }
}
