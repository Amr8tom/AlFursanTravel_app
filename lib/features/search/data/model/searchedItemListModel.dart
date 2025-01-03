import 'dart:convert';

SearchedItemListModel searchedItemListFromJson(String str) =>
    SearchedItemListModel.fromJson(json.decode(str));
String searchedItemListToJson(SearchedItemListModel data) =>
    json.encode(data.toJson());

class SearchedItemListModel {
  SearchedItemListModel({
    String? name,
    num? id,
    String? price,
  }) {
    _name = name;
    _id = id;
    _price = price;
  }

  SearchedItemListModel.fromJson(dynamic json) {
    _name = json['name'];
    _id = json['id'];
    _price = json['price'];
  }
  String? _name;
  num? _id;
  String? _price;
  SearchedItemListModel copyWith({
    String? name,
    num? id,
    String? price,
  }) =>
      SearchedItemListModel(
        name: name ?? _name,
        id: id ?? _id,
        price: price ?? _price,
      );
  String? get name => _name;
  num? get id => _id;
  String? get price => _price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['id'] = _id;
    map['price'] = _price;
    return map;
  }
}
