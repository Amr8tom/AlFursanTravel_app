import 'package:bloc/bloc.dart';
import 'package:fursan_travel_app/features/notifications/data/models/notification_model.dart';
import 'package:fursan_travel_app/features/notifications/domain/use_cases/get_notification_use_case.dart';
import 'package:meta/meta.dart';

part 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final GetNotificationUseCase _getNotificationUseCase;
  NotificationsCubit(this._getNotificationUseCase)
      : super(NotificationsLoading());
  Future getNotificationData() async {
    final result = await _getNotificationUseCase.call();
    return result.fold((f) => emit(NotificationsFailure()),
        (model) => emit(NotificationsSuccess(notificationModel: model)));
  }
}
