// To parse this JSON data, do
//
//     final docs = docsFromJson(jsonString);

import 'dart:convert';

Docs docsFromJson(String str) => Docs.fromJson(json.decode(str));

String docsToJson(Docs data) => json.encode(data.toJson());

class Docs {
  final List<DocData> data;
  final int total;
  final int skip;

  Docs({
    required this.data,
    required this.total,
    required this.skip,
  });

  factory Docs.fromJson(Map<String, dynamic> json) => Docs(
        data: List<DocData>.from(json["data"].map((x) => DocData.fromJson(x))),
        total: json["total"],
        skip: json["\u0024skip"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "total": total,
        "\u0024skip": skip,
      };
}

class DocData {
  final DateTime createdAt;
  final String? status;
  final String? id;
  final String? uuid;

  DocData({
    required this.createdAt,
    this.status,
    this.id,
    this.uuid,
  });

  factory DocData.fromJson(Map<String, dynamic> json) => DocData(
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
