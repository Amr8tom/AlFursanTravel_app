part of 'notifications_cubit.dart';

@immutable
sealed class NotificationsState {}

final class NotificationsLoading extends NotificationsState {}

final class NotificationsSuccess extends NotificationsState {
  final NotificationModel notificationModel;
  NotificationsSuccess({required this.notificationModel});
}

final class NotificationsFailure extends NotificationsState {}
