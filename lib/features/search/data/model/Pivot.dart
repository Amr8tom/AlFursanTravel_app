class Pivot {
  Pivot({
      this.productId, 
      this.imageId, 
      this.createdAt, 
      this.updatedAt,});

  Pivot.fromJson(dynamic json) {
    productId = json['product_id'];
    imageId = json['image_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? productId;
  num? imageId;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_id'] = productId;
    map['image_id'] = imageId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}