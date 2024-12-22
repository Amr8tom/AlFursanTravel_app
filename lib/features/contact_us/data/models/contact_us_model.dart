import 'dart:convert';

/// status : "success"

ContactUsModel contactUsModelFromJson(String str) =>
    ContactUsModel.fromJson(json.decode(str));
String contactUsModelToJson(ContactUsModel data) => json.encode(data.toJson());

class ContactUsModel {
  ContactUsModel({
    String? status,
  }) {
    _status = status;
  }

  ContactUsModel.fromJson(dynamic json) {
    _status = json['status'];
  }
  String? _status;
  ContactUsModel copyWith({
    String? status,
  }) =>
      ContactUsModel(
        status: status ?? _status,
      );
  String? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    return map;
  }
}
