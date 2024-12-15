class TourDetailsModel {
  TourDetailsModel({
    this.id,
    this.categoryId,
    this.slug,
    this.nameEn,
    this.nameAr,
    this.offerTitleEn,
    this.offerTitleAr,
    this.durationEn,
    this.durationAr,
    this.infoAr,
    this.programAr,
    this.includeAr,
    this.excludeAr,
    this.notesAr,
    this.status,
    this.order,
    this.infoEn,
    this.programEn,
    this.includeEn,
    this.excludeEn,
    this.notesEn,
    this.tktSinglePrice,
    this.tktTriblePrice,
    this.tktChd2Price,
    this.tktChd6Price,
    this.tktEnfPrice,
    this.transSinglePrice,
    this.transTriblePrice,
    this.transChd2Price,
    this.transChd6Price,
    this.transEnfPrice,
    this.hotelSinglePrice,
    this.hotelTriblePrice,
    this.hotelChd2Price,
    this.hotelChd6Price,
    this.hotelEnfPrice,
    this.visaSinglePrice,
    this.visaTriblePrice,
    this.visaChd2Price,
    this.visaChd6Price,
    this.visaEnfPrice,
    this.seatsAvailable,
    this.file,
    this.commition,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.imageName,
    this.images,
  });

  TourDetailsModel.fromJson(dynamic json) {
    id = json['id'];
    categoryId = json['category_id'];
    slug = json['slug'];
    nameEn = json['name_en'];
    nameAr = json['name_ar'];
    offerTitleEn = json['offer_title_en'];
    offerTitleAr = json['offer_title_ar'];
    durationEn = json['duration_en'];
    durationAr = json['duration_ar'];
    infoAr = json['info_ar'];
    programAr = json['program_ar'];
    includeAr = json['include_ar'];
    excludeAr = json['exclude_ar'];
    notesAr = json['notes_ar'];
    status = json['status'];
    order = json['order'];
    infoEn = json['info_en'];
    programEn = json['program_en'];
    includeEn = json['include_en'];
    excludeEn = json['exclude_en'];
    notesEn = json['notes_en'];
    tktSinglePrice = json['tkt_single_price'];
    tktTriblePrice = json['tkt_trible_price'];
    tktChd2Price = json['tkt_chd2_price'];
    tktChd6Price = json['tkt_chd6_price'];
    tktEnfPrice = json['tkt_enf_price'];
    transSinglePrice = json['trans_single_price'];
    transTriblePrice = json['trans_trible_price'];
    transChd2Price = json['trans_chd2_price'];
    transChd6Price = json['trans_chd6_price'];
    transEnfPrice = json['trans_enf_price'];
    hotelSinglePrice = json['hotel_single_price'];
    hotelTriblePrice = json['hotel_trible_price'];
    hotelChd2Price = json['hotel_chd2_price'];
    hotelChd6Price = json['hotel_chd6_price'];
    hotelEnfPrice = json['hotel_enf_price'];
    visaSinglePrice = json['visa_single_price'];
    visaTriblePrice = json['visa_trible_price'];
    visaChd2Price = json['visa_chd2_price'];
    visaChd6Price = json['visa_chd6_price'];
    visaEnfPrice = json['visa_enf_price'];
    seatsAvailable = json['seats_available'];
    file = json['file'];
    commition = json['commition'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    imageName = json['image_name'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
  }
  num? id;
  num? categoryId;
  String? slug;
  String? nameEn;
  String? nameAr;
  String? offerTitleEn;
  String? offerTitleAr;
  String? durationEn;
  String? durationAr;
  String? infoAr;
  String? programAr;
  String? includeAr;
  String? excludeAr;
  String? notesAr;
  String? status;
  num? order;
  String? infoEn;
  String? programEn;
  String? includeEn;
  String? excludeEn;
  String? notesEn;
  num? tktSinglePrice;
  num? tktTriblePrice;
  num? tktChd2Price;
  num? tktChd6Price;
  num? tktEnfPrice;
  num? transSinglePrice;
  num? transTriblePrice;
  num? transChd2Price;
  num? transChd6Price;
  num? transEnfPrice;
  num? hotelSinglePrice;
  num? hotelTriblePrice;
  num? hotelChd2Price;
  num? hotelChd6Price;
  num? hotelEnfPrice;
  num? visaSinglePrice;
  num? visaTriblePrice;
  num? visaChd2Price;
  num? visaChd6Price;
  num? visaEnfPrice;
  num? seatsAvailable;
  String? file;
  String? commition;
  String? startDate;
  String? endDate;
  String? createdAt;
  String? updatedAt;
  String? imageName;
  List<Images>? images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category_id'] = categoryId;
    map['slug'] = slug;
    map['name_en'] = nameEn;
    map['name_ar'] = nameAr;
    map['offer_title_en'] = offerTitleEn;
    map['offer_title_ar'] = offerTitleAr;
    map['duration_en'] = durationEn;
    map['duration_ar'] = durationAr;
    map['info_ar'] = infoAr;
    map['program_ar'] = programAr;
    map['include_ar'] = includeAr;
    map['exclude_ar'] = excludeAr;
    map['notes_ar'] = notesAr;
    map['status'] = status;
    map['order'] = order;
    map['info_en'] = infoEn;
    map['program_en'] = programEn;
    map['include_en'] = includeEn;
    map['exclude_en'] = excludeEn;
    map['notes_en'] = notesEn;
    map['tkt_single_price'] = tktSinglePrice;
    map['tkt_trible_price'] = tktTriblePrice;
    map['tkt_chd2_price'] = tktChd2Price;
    map['tkt_chd6_price'] = tktChd6Price;
    map['tkt_enf_price'] = tktEnfPrice;
    map['trans_single_price'] = transSinglePrice;
    map['trans_trible_price'] = transTriblePrice;
    map['trans_chd2_price'] = transChd2Price;
    map['trans_chd6_price'] = transChd6Price;
    map['trans_enf_price'] = transEnfPrice;
    map['hotel_single_price'] = hotelSinglePrice;
    map['hotel_trible_price'] = hotelTriblePrice;
    map['hotel_chd2_price'] = hotelChd2Price;
    map['hotel_chd6_price'] = hotelChd6Price;
    map['hotel_enf_price'] = hotelEnfPrice;
    map['visa_single_price'] = visaSinglePrice;
    map['visa_trible_price'] = visaTriblePrice;
    map['visa_chd2_price'] = visaChd2Price;
    map['visa_chd6_price'] = visaChd6Price;
    map['visa_enf_price'] = visaEnfPrice;
    map['seats_available'] = seatsAvailable;
    map['file'] = file;
    map['commition'] = commition;
    map['start_date'] = startDate;
    map['end_date'] = endDate;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['image_name'] = imageName;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Images {
  Images({
    this.id,
    this.albumId,
    this.originalFilename,
    this.imageFilename,
    this.thumbFilename,
    this.captionEn,
    this.captionAr,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  Images.fromJson(dynamic json) {
    id = json['id'];
    albumId = json['album_id'];
    originalFilename = json['original_filename'];
    imageFilename = json['image_filename'];
    thumbFilename = json['thumb_filename'];
    captionEn = json['caption_en'];
    captionAr = json['caption_ar'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
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
  Pivot? pivot;

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
    if (pivot != null) {
      map['pivot'] = pivot?.toJson();
    }
    return map;
  }
}

class Pivot {
  Pivot({
    this.productId,
    this.imageId,
    this.createdAt,
    this.updatedAt,
  });

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
