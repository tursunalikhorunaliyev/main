// To parse this JSON data, do
//
//     final checksDataModel = checksDataModelFromJson(jsonString);

import 'dart:convert';

ChecksDataModel checksDataModelFromJson(String str) =>
    ChecksDataModel.fromJson(json.decode(str));

class ChecksDataModel {
  final List<CheckData> data;

  ChecksDataModel({
    required this.data,
  });

  factory ChecksDataModel.fromJson(Map<String, dynamic> json) =>
      ChecksDataModel(
        data: List<CheckData>.from(
            json["data"].map((x) => CheckData.fromJson(x))),
      );
}

class CheckData {
  final DateTime createdAt;
  final String status;
  final String id;
  final String uuid;

  CheckData({
    required this.createdAt,
    required this.status,
    required this.id,
    required this.uuid,
  });

  factory CheckData.fromJson(Map<String, dynamic> json) => CheckData(
        createdAt: DateTime.parse(json["created_at"]),
        status: json["status"],
        id: json["_id"],
        uuid: json["_uuid"],
      );
}
