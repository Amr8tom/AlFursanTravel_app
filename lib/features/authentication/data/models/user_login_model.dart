import 'dart:convert';

/// name : "amr ala"
/// age : "19"

UserLoginModel userLoginModelFromJson(String str) =>
    UserLoginModel.fromJson(json.decode(str));
String userLoginModelToJson(UserLoginModel data) => json.encode(data.toJson());

class UserLoginModel {
  UserLoginModel({
    String? name,
    String? age,
  }) {
    _name = name;
    _age = age;
  }

  UserLoginModel.fromJson(dynamic json) {
    _name = json['name'];
    _age = json['age'];
  }
  String? _name;
  String? _age;
  UserLoginModel copyWith({
    String? name,
    String? age,
  }) =>
      UserLoginModel(
        name: name ?? _name,
        age: age ?? _age,
      );
  String? get name => _name;
  String? get age => _age;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['age'] = _age;
    return map;
  }
}
