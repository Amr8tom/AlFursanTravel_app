import 'package:fursan_travel_app/features/notifications/data/models/notification_model.dart';
import 'package:fursan_travel_app/utils/dio/dio_helper.dart';

import '../../../../utils/constants/api_constants.dart';

abstract class NotificationRemoteDataSources {
  Future<NotificationModel> getNotificationData();
}

class NotificationRemoteDataSourcesImp
    implements NotificationRemoteDataSources {
  final DioHelper _dio;
  const NotificationRemoteDataSourcesImp(this._dio);

  @override
  Future<NotificationModel> getNotificationData() async {
    final responose = await _dio.getData(URL: URL.notification);
    return NotificationModel.fromJson(responose);
  }
}
