import 'dart:convert';

enum CheckStatus {
  draft,
  deleted,
  payed,
}
// To parse this JSON data, do
//
//     final checkCreationModel = checkCreationModelFromJson(jsonString);

CheckCreationModel checkCreationModelFromJson(String str) =>
    CheckCreationModel.fromJson(json.decode(str));

String checkCreationModelToJson(CheckCreationModel data) =>
    json.encode(data.toJson());

class CheckCreationModel {
  final DateTime createdAt;
  final CheckStatus status;

  CheckCreationModel({
    required this.createdAt,
    required this.status,
  });

  factory CheckCreationModel.fromJson(Map<String, dynamic> json) =>
      CheckCreationModel(
        createdAt: json["created_at"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "created_at": createdAt.toString(),
        "status": status.name,
      };
}
