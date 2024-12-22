class AllVisasModel {
  List<VisaModel>? visas;

  AllVisasModel({this.visas});

  // Parse the list of JSON objects into a list of Tour instances
  AllVisasModel.fromJson(List<dynamic> jsonList) {
    visas = jsonList.map((json) => VisaModel.fromJson(json)).toList();
  }

  // Convert the list of Tour instances back to JSON
  List<Map<String, dynamic>> toJsonList() {
    return visas?.map((tour) => tour.toJson()).toList() ?? [];
  }
}

class VisaModel {
  VisaModel({
    this.id,
    this.slug,
    this.titleEn,
    this.titleAr,
    this.offerTitleEn,
    this.offerTitleAr,
    this.price,
    this.order,
    this.rquirementsAr,
    this.rquirementsEn,
    this.descriptionEn,
    this.descriptionAr,
    this.featuredImageId,
    this.statusEn,
    this.statusAr,
    this.metaDescriptionEn,
    this.metaDescriptionAr,
    this.metaKeywordsEn,
    this.metaKeywordsAr,
    this.createdAt,
    this.updatedAt,
    this.imageName,
    this.featuredImage,
  });

  VisaModel.fromJson(dynamic json) {
    id = json['id'];
    slug = json['slug'];
    titleEn = json['title_en'];
    titleAr = json['title_ar'];
    offerTitleEn = json['offer_title_en'];
    offerTitleAr = json['offer_title_ar'];
    price = json['price'];
    order = json['order'];
    rquirementsAr = json['rquirements_ar'];
    rquirementsEn = json['rquirements_en'];
    descriptionEn = json['description_en'];
    descriptionAr = json['description_ar'];
    featuredImageId = json['featured_image_id'];
    statusEn = json['status_en'];
    statusAr = json['status_ar'];
    metaDescriptionEn = json['meta_description_en'];
    metaDescriptionAr = json['meta_description_ar'];
    metaKeywordsEn = json['meta_keywords_en'];
    metaKeywordsAr = json['meta_keywords_ar'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    imageName = json['image_name'];
    featuredImage = json['featured_image'] != null
        ? FeaturedImage.fromJson(json['featured_image'])
        : null;
  }
  num? id;
  String? slug;
  String? titleEn;
  String? titleAr;
  String? offerTitleEn;
  String? offerTitleAr;
  String? price;
  num? order;
  String? rquirementsAr;
  String? rquirementsEn;
  String? descriptionEn;
  String? descriptionAr;
  num? featuredImageId;
  String? statusEn;
  String? statusAr;
  String? metaDescriptionEn;
  String? metaDescriptionAr;
  String? metaKeywordsEn;
  String? metaKeywordsAr;
  String? createdAt;
  String? updatedAt;
  String? imageName;
  FeaturedImage? featuredImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['slug'] = slug;
    map['title_en'] = titleEn;
    map['title_ar'] = titleAr;
    map['offer_title_en'] = offerTitleEn;
    map['offer_title_ar'] = offerTitleAr;
    map['price'] = price;
    map['order'] = order;
    map['rquirements_ar'] = rquirementsAr;
    map['rquirements_en'] = rquirementsEn;
    map['description_en'] = descriptionEn;
    map['description_ar'] = descriptionAr;
    map['featured_image_id'] = featuredImageId;
    map['status_en'] = statusEn;
    map['status_ar'] = statusAr;
    map['meta_description_en'] = metaDescriptionEn;
    map['meta_description_ar'] = metaDescriptionAr;
    map['meta_keywords_en'] = metaKeywordsEn;
    map['meta_keywords_ar'] = metaKeywordsAr;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['image_name'] = imageName;
    if (featuredImage != null) {
      map['featured_image'] = featuredImage?.toJson();
    }
    return map;
  }
}

class FeaturedImage {
  FeaturedImage({
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

  FeaturedImage.fromJson(dynamic json) {
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
