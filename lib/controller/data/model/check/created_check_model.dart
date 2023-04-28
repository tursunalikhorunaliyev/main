// To parse this JSON data, do
//
//     final createdCheckData = createdCheckDataFromJson(jsonString);

import 'dart:convert';

CreatedCheckData createdCheckDataFromJson(String str) =>
    CreatedCheckData.fromJson(json.decode(str));

String createdCheckDataToJson(CreatedCheckData data) =>
    json.encode(data.toJson());

class CreatedCheckData {
  final DateTime createdAt;
  final String status;
  final String id;
  final String uuid;

  CreatedCheckData({
    required this.createdAt,
    required this.status,
    required this.id,
    required this.uuid,
  });

  factory CreatedCheckData.fromJson(Map<String, dynamic> json) =>
      CreatedCheckData(
        createdAt: DateTime.parse(json["created_at"]),
        status: json["status"],
        id: json["_id"],
        uuid: json["_uuid"],
      );

  Map<String, dynamic> toJson() => {
        "created_at": createdAt.toIso8601String(),
        "status": status,
        "_id": id,
        "_uuid": uuid,
      };
}
