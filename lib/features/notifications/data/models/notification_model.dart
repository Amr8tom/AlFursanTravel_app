import 'dart:convert';

class NotificationModel {
  List<Notification>? Notifications;

  NotificationModel({this.Notifications});

  // Parse the list of JSON objects into a list of Notification instances
  NotificationModel.fromJson(List<dynamic> jsonList) {
    Notifications =
        jsonList.map((json) => Notification.fromJson(json)).toList();
  }

  // Convert the list of Notification instances back to JSON
  List<Map<String, dynamic>> toJson() {
    return Notifications?.map((tour) => tour.toJson()).toList() ?? [];
  }
}

Notification notificationModelFromJson(String str) =>
    Notification.fromJson(json.decode(str));
String notificationModelToJson(Notification data) => json.encode(data.toJson());

class Notification {
  Notification({
    num? id,
    String? titleEn,
    String? titleAr,
    dynamic nameEn,
    dynamic nameAr,
    String? messageEn,
    String? messageAr,
    String? type,
    String? seen,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _titleEn = titleEn;
    _titleAr = titleAr;
    _nameEn = nameEn;
    _nameAr = nameAr;
    _messageEn = messageEn;
    _messageAr = messageAr;
    _type = type;
    _seen = seen;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Notification.fromJson(dynamic json) {
    _id = json['id'];
    _titleEn = json['title_en'];
    _titleAr = json['title_ar'];
    _nameEn = json['name_en'];
    _nameAr = json['name_ar'];
    _messageEn = json['message_en'];
    _messageAr = json['message_ar'];
    _type = json['type'];
    _seen = json['seen'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _titleEn;
  String? _titleAr;
  dynamic _nameEn;
  dynamic _nameAr;
  String? _messageEn;
  String? _messageAr;
  String? _type;
  String? _seen;
  String? _createdAt;
  String? _updatedAt;
  Notification copyWith({
    num? id,
    String? titleEn,
    String? titleAr,
    dynamic nameEn,
    dynamic nameAr,
    String? messageEn,
    String? messageAr,
    String? type,
    String? seen,
    String? createdAt,
    String? updatedAt,
  }) =>
      Notification(
        id: id ?? _id,
        titleEn: titleEn ?? _titleEn,
        titleAr: titleAr ?? _titleAr,
        nameEn: nameEn ?? _nameEn,
        nameAr: nameAr ?? _nameAr,
        messageEn: messageEn ?? _messageEn,
        messageAr: messageAr ?? _messageAr,
        type: type ?? _type,
        seen: seen ?? _seen,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get titleEn => _titleEn;
  String? get titleAr => _titleAr;
  dynamic get nameEn => _nameEn;
  dynamic get nameAr => _nameAr;
  String? get messageEn => _messageEn;
  String? get messageAr => _messageAr;
  String? get type => _type;
  String? get seen => _seen;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title_en'] = _titleEn;
    map['title_ar'] = _titleAr;
    map['name_en'] = _nameEn;
    map['name_ar'] = _nameAr;
    map['message_en'] = _messageEn;
    map['message_ar'] = _messageAr;
    map['type'] = _type;
    map['seen'] = _seen;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
