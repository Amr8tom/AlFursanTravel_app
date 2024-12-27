import 'dart:convert';

/// name : "amr"

ProfileDataModel profileDataModelFromJson(String str) =>
    ProfileDataModel.fromJson(json.decode(str));
String profileDataModelToJson(ProfileDataModel data) =>
    json.encode(data.toJson());

class ProfileDataModel {
  ProfileDataModel({
    String? name,
  }) {
    _name = name;
  }

  ProfileDataModel.fromJson(dynamic json) {
    _name = json['name'];
  }
  String? _name;
  ProfileDataModel copyWith({
    String? name,
  }) =>
      ProfileDataModel(
        name: name ?? _name,
      );
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    return map;
  }
}
