// To parse this JSON data, do
//
//     final docChecksData = docChecksDataFromJson(jsonString);

import 'dart:convert';

DocChecksData docChecksDataFromJson(String str) =>
    DocChecksData.fromJson(json.decode(str));

String docChecksDataToJson(DocChecksData data) => json.encode(data.toJson());

class DocChecksData {
  final List<RowData> data;

  DocChecksData({
    required this.data,
  });

  factory DocChecksData.fromJson(Map<String, dynamic> json) => DocChecksData(
        data: List<RowData>.from(json["data"].map((x) => RowData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class RowData {
  final String? status;
  final String document;
  final Goods goods;
  final Qty qty;
  final Price price;
  final Cost cost;
  final String id;
  final String uuid;

  RowData({
    this.status,
    required this.document,
    required this.goods,
    required this.qty,
    required this.price,
    required this.cost,
    required this.id,
    required this.uuid,
  });

  factory RowData.fromJson(Map<String, dynamic> json) => RowData(
        status: json["status"],
        document: json["document"],
        goods: Goods.fromJson(json["goods"]),
        qty: Qty.fromJson(json["qty"]),
        price: Price.fromJson(json["price"]),
        cost: Cost.fromJson(json["cost"]),
        id: json["_id"],
        uuid: json["_uuid"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "document": document,
        "goods": goods.toJson(),
        "qty": qty.toJson(),
        "price": price.toJson(),
        "cost": cost.toJson(),
        "_id": id,
        "_uuid": uuid,
      };
}

class Cost {
  final int number;
  final String currency;

  Cost({
    required this.number,
    required this.currency,
  });

  factory Cost.fromJson(Map<String, dynamic> json) => Cost(
        number: json["number"],
        currency: json["currency"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "currency": currency,
      };
}

class Goods {
  final String name;
  final String id;
  final String uuid;

  Goods({
    required this.name,
    required this.id,
    required this.uuid,
  });

  factory Goods.fromJson(Map<String, dynamic> json) => Goods(
        name: json["name"],
        id: json["_id"],
        uuid: json["_uuid"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "_id": id,
        "_uuid": uuid,
      };
}

class Price {
  final int number;
  final String currency;
  final Per per;

  Price({
    required this.number,
    required this.currency,
    required this.per,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        number: json["number"],
        currency: json["currency"],
        per: Per.fromJson(json["per"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "currency": currency,
        "per": per.toJson(),
      };
}

class Per {
  final int number;
  final String uom;

  Per({
    required this.number,
    required this.uom,
  });

  factory Per.fromJson(Map<String, dynamic> json) => Per(
        number: json["number"],
        uom: json["uom"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "uom": uom,
      };
}

class Qty {
  final int number;
  final Uom uom;

  Qty({
    required this.number,
    required this.uom,
  });

  factory Qty.fromJson(Map<String, dynamic> json) => Qty(
        number: json["number"],
        uom: Uom.fromJson(json["uom"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "uom": uom.toJson(),
      };
}

class Uom {
  final String id;
  final String status;

  Uom({
    required this.id,
    required this.status,
  });

  factory Uom.fromJson(Map<String, dynamic> json) => Uom(
        id: json["_id"],
        status: json["_status"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "_status": status,
      };
}
