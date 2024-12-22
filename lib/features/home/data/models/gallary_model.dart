import 'dart:convert';

/// id : 148
/// album_id : 3
/// original_filename : "16e9c2a9-355e-444f-9040-f38a78e11d09.jpg"
/// image_filename : "5e314e016b30740430c4bc3ecc2513289a4312be.jpg"
/// thumb_filename : "thumb_5e314e016b30740430c4bc3ecc2513289a4312be.jpg"
/// caption_en : ""
/// caption_ar : ""
/// created_at : "2018-10-01T11:20:05.000000Z"
/// updated_at : "2018-10-01T11:20:05.000000Z"
/// image_name : "https://alfursantravel.com/image/5e314e016b30740430c4bc3ecc2513289a4312be.jpg"

GallaryModel gallaryModelFromJson(String str) =>
    GallaryModel.fromJson(json.decode(str));
String gallaryModelToJson(GallaryModel data) => json.encode(data.toJson());

class GallaryModel {
  GallaryModel({
    num? id,
    num? albumId,
    String? originalFilename,
    String? imageFilename,
    String? thumbFilename,
    String? captionEn,
    String? captionAr,
    String? createdAt,
    String? updatedAt,
    String? imageName,
  }) {
    _id = id;
    _albumId = albumId;
    _originalFilename = originalFilename;
    _imageFilename = imageFilename;
    _thumbFilename = thumbFilename;
    _captionEn = captionEn;
    _captionAr = captionAr;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _imageName = imageName;
  }

  GallaryModel.fromJson(dynamic json) {
    _id = json['id'];
    _albumId = json['album_id'];
    _originalFilename = json['original_filename'];
    _imageFilename = json['image_filename'];
    _thumbFilename = json['thumb_filename'];
    _captionEn = json['caption_en'];
    _captionAr = json['caption_ar'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _imageName = json['image_name'];
  }
  num? _id;
  num? _albumId;
  String? _originalFilename;
  String? _imageFilename;
  String? _thumbFilename;
  String? _captionEn;
  String? _captionAr;
  String? _createdAt;
  String? _updatedAt;
  String? _imageName;
  GallaryModel copyWith({
    num? id,
    num? albumId,
    String? originalFilename,
    String? imageFilename,
    String? thumbFilename,
    String? captionEn,
    String? captionAr,
    String? createdAt,
    String? updatedAt,
    String? imageName,
  }) =>
      GallaryModel(
        id: id ?? _id,
        albumId: albumId ?? _albumId,
        originalFilename: originalFilename ?? _originalFilename,
        imageFilename: imageFilename ?? _imageFilename,
        thumbFilename: thumbFilename ?? _thumbFilename,
        captionEn: captionEn ?? _captionEn,
        captionAr: captionAr ?? _captionAr,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        imageName: imageName ?? _imageName,
      );
  num? get id => _id;
  num? get albumId => _albumId;
  String? get originalFilename => _originalFilename;
  String? get imageFilename => _imageFilename;
  String? get thumbFilename => _thumbFilename;
  String? get captionEn => _captionEn;
  String? get captionAr => _captionAr;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get imageName => _imageName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['album_id'] = _albumId;
    map['original_filename'] = _originalFilename;
    map['image_filename'] = _imageFilename;
    map['thumb_filename'] = _thumbFilename;
    map['caption_en'] = _captionEn;
    map['caption_ar'] = _captionAr;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['image_name'] = _imageName;
    return map;
  }
}
