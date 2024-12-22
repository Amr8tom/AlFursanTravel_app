class GallaryModel {
  List<Gallary>? data;

  GallaryModel({this.data});

  // Parse the list of JSON objects into a list of Gallary instances
  GallaryModel.fromJson(List<dynamic> jsonList) {
    data = jsonList.map((json) => Gallary.fromJson(json)).toList();
  }

  // Convert the list of Gallary instances back to JSON
  List<Map<String, dynamic>> toJson() {
    return data?.map((tour) => tour.toJson()).toList() ?? [];
  }
}

class Gallary {
  Gallary({
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

  Gallary.fromJson(dynamic json) {
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
  Gallary copyWith({
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
      Gallary(
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
