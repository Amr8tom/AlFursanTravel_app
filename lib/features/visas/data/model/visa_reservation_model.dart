class VisaReservationModel {
  VisaReservationModel({
    this.status,
    this.visa,
  });

  VisaReservationModel.fromJson(dynamic json) {
    status = json['status'];
    visa = json['visa'] != null ? Visa.fromJson(json['visa']) : null;
  }
  String? status;
  Visa? visa;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (visa != null) {
      map['visa'] = visa?.toJson();
    }
    return map;
  }
}

class Visa {
  Visa({
    this.senderName,
    this.senderLastName,
    this.senderPhoneNumber,
    this.senderEmailAddress,
    this.country,
    this.senderAddress,
    this.notes,
    this.status,
    this.visaId,
    this.attaches,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  Visa.fromJson(dynamic json) {
    senderName = json['sender_name'];
    senderLastName = json['sender_last_name'];
    senderPhoneNumber = json['sender_phone_number'];
    senderEmailAddress = json['sender_email_address'];
    country = json['country'];
    senderAddress = json['sender_address'];
    notes = json['notes'];
    status = json['status'];
    visaId = json['visa_id'];
    attaches = json['attaches'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }
  String? senderName;
  String? senderLastName;
  String? senderPhoneNumber;
  String? senderEmailAddress;
  String? country;
  String? senderAddress;
  String? notes;
  String? status;
  dynamic visaId;
  String? attaches;
  String? updatedAt;
  String? createdAt;
  num? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sender_name'] = senderName;
    map['sender_last_name'] = senderLastName;
    map['sender_phone_number'] = senderPhoneNumber;
    map['sender_email_address'] = senderEmailAddress;
    map['country'] = country;
    map['sender_address'] = senderAddress;
    map['notes'] = notes;
    map['status'] = status;
    map['visa_id'] = visaId;
    map['attaches'] = attaches;
    map['updated_at'] = updatedAt;
    map['created_at'] = createdAt;
    map['id'] = id;
    return map;
  }
}
