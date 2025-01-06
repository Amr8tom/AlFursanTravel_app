class UserSginUpModel {
  UserSginUpModel({
      this.status, 
      this.token, 
      this.user,});

  UserSginUpModel.fromJson(dynamic json) {
    status = json['status'];
    token = json['token'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? status;
  String? token;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['token'] = token;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

class User {
  User({
      this.firstName, 
      this.lastName, 
      this.email, 
      this.status, 
      this.role, 
      this.updatedAt, 
      this.createdAt, 
      this.id,});

  User.fromJson(dynamic json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    status = json['status'];
    role = json['role'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }
  String? firstName;
  String? lastName;
  String? email;
  String? status;
  String? role;
  String? updatedAt;
  String? createdAt;
  num? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['email'] = email;
    map['status'] = status;
    map['role'] = role;
    map['updated_at'] = updatedAt;
    map['created_at'] = createdAt;
    map['id'] = id;
    return map;
  }

}