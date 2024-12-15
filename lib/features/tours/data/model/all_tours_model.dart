class AllToursModel {
  AllToursModel({
    this.id,
    this.slug,
    this.nameEn,
    this.nameAr,
    this.descriptionEn,
    this.descriptionAr,
    this.status,
    this.imageId,
    this.createdAt,
    this.updatedAt,
    this.image,
  });

  AllToursModel.fromJson(dynamic json) {
    id = json['id'];
    slug = json['slug'];
    nameEn = json['name_en'];
    nameAr = json['name_ar'];
    descriptionEn = json['description_en'];
    descriptionAr = json['description_ar'];
    status = json['status'];
    imageId = json['image_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
  }
  num? id;
  String? slug;
  String? nameEn;
  String? nameAr;
  String? descriptionEn;
  String? descriptionAr;
  String? status;
  num? imageId;
  String? createdAt;
  String? updatedAt;
  Image? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['slug'] = slug;
    map['name_en'] = nameEn;
    map['name_ar'] = nameAr;
    map['description_en'] = descriptionEn;
    map['description_ar'] = descriptionAr;
    map['status'] = status;
    map['image_id'] = imageId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (image != null) {
      map['image'] = image?.toJson();
    }
    return map;
  }
}

class Image {
  Image({
    this.id,
    this.albumId,
    this.originalFilename,
    this.imageFilename,
    this.thumbFilename,
    this.captionEn,
    this.captionAr,
    this.createdAt,
    this.updatedAt,
  });

  Image.fromJson(dynamic json) {
    id = json['id'];
    albumId = json['album_id'];
    originalFilename = json['original_filename'];
    imageFilename = json['image_filename'];
    thumbFilename = json['thumb_filename'];
    captionEn = json['caption_en'];
    captionAr = json['caption_ar'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  dynamic albumId;
  String? originalFilename;
  String? imageFilename;
  String? thumbFilename;
  String? captionEn;
  String? captionAr;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['album_id'] = albumId;
    map['original_filename'] = originalFilename;
    map['image_filename'] = imageFilename;
    map['thumb_filename'] = thumbFilename;
    map['caption_en'] = captionEn;
    map['caption_ar'] = captionAr;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}
