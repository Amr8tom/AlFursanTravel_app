import 'dart:convert';

/// notification1 : "hihi"

NotificationModel notificationModelFromJson(String str) =>
    NotificationModel.fromJson(json.decode(str));
String notificationModelToJson(NotificationModel data) =>
    json.encode(data.toJson());

class NotificationModel {
  NotificationModel({
    String? notification1,
  }) {
    _notification1 = notification1;
  }

  NotificationModel.fromJson(dynamic json) {
    _notification1 = json['notification1'];
  }
  String? _notification1;
  NotificationModel copyWith({
    String? notification1,
  }) =>
      NotificationModel(
        notification1: notification1 ?? _notification1,
      );
  String? get notification1 => _notification1;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['notification1'] = _notification1;
    return map;
  }
}
