import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fursan_travel_app/features/notifications/data/models/notification_model.dart';
import 'package:fursan_travel_app/utils/error/failure.dart';
import 'package:fursan_travel_app/utils/local_storage/cach_keys.dart';
import 'package:fursan_travel_app/utils/local_storage/cache_helper.dart';

abstract class NotificationLocalDataSources {
  Future<Unit> cacheNotificationData(
      {required List<Map<String, dynamic>> notificationJsonList});
  Future<NotificationModel> getNotificationData();
}

class NotificationLocalDataSourcesImp implements NotificationLocalDataSources {
  @override
  Future<Unit> cacheNotificationData(
      {required List<Map<String, dynamic>>  notificationJsonList}) async {
    final stringJson = jsonEncode(notificationJsonList);
    await PrefService.putString(key: CacheKeys.notification, value: stringJson);
    return Future.value(unit);
  }

  @override
  Future<NotificationModel> getNotificationData() async {
    final jsonString = await PrefService.getString(key: CacheKeys.notification);
    if (jsonString != null) {
      final json = await jsonDecode(jsonString);
      return NotificationModel.fromJson(json);
    } else {
      throw CacheFailure();
    }
  }
}
