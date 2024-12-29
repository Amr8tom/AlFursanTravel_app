import 'dart:convert';

/// name : "aaa"

UserSginUpModel userSginInModelFromJson(String str) =>
    UserSginUpModel.fromJson(json.decode(str));
String userSginInModelToJson(UserSginUpModel data) =>
    json.encode(data.toJson());

class UserSginUpModel {
  UserSginUpModel({
    String? name,
  }) {
    _name = name;
  }

  UserSginUpModel.fromJson(dynamic json) {
    _name = json['name'];
  }
  String? _name;
  UserSginUpModel copyWith({
    String? name,
  }) =>
      UserSginUpModel(
        name: name ?? _name,
      );
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    return map;
  }
}
