class LogOutModel {
  LogOutModel({
      this.stauts,});

  LogOutModel.fromJson(dynamic json) {
    stauts = json['stauts'];
  }
  bool? stauts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['stauts'] = stauts;
    return map;
  }

}