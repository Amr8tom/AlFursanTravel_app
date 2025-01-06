class DeleteAccountModel {
  DeleteAccountModel({
      this.delete,});

  DeleteAccountModel.fromJson(dynamic json) {
    delete = json['delete'];
  }
  String? delete;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['delete'] = delete;
    return map;
  }

}