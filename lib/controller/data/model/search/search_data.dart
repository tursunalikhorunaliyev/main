// To parse this JSON data, do
//
//     final searchData = searchDataFromJson(jsonString);

import 'dart:convert';

SearchData searchDataFromJson(String str) =>
    SearchData.fromJson(json.decode(str));

class SearchData {
  SearchData({
    required this.data,
    required this.total,
    required this.skip,
  });

  final List<Data> data;
  final int total;
  final int skip;

  factory SearchData.fromJson(Map<String, dynamic> json) => SearchData(
        data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
        total: json["total"],
        skip: json["\u0024skip"],
      );
}

class Data {
  Data({
    required this.name,
    required this.manufacturer,
    required this.id,
    required this.uuid,
  });

  final String name;
  final String manufacturer;
  final String id;
  final String uuid;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json["name"],
        manufacturer: json["manufacturer"],
        id: json["_id"],
        uuid: json["_uuid"],
      );
}
