import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/notifications/data/models/notification_model.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';

abstract class NotificationRepository {
  Future<Either<Failure, NotificationModel>> getNotifications();
}
