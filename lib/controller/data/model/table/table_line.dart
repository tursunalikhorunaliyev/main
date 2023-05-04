// To parse this JSON data, do
//
//     final tableLine = tableLineFromJson(jsonString);

import 'dart:convert';

TableLine tableLineFromJson(String str) => TableLine.fromJson(json.decode(str));

String tableLineToJson(TableLine data) => json.encode(data.toJson());

class TableLine {
  final String? status;
  final String document;
  final String goods;
  final Qty qty;
  final Price price;
  final Cost cost;

  TableLine({
    this.status,
    required this.document,
    required this.goods,
    required this.qty,
    required this.price,
    required this.cost,
  });

  factory TableLine.fromJson(Map<String, dynamic> json) => TableLine(
        status: json["status"],
        document: json["document"],
        goods: json["goods"],
        qty: Qty.fromJson(json["qty"]),
        price: Price.fromJson(json["price"]),
        cost: Cost.fromJson(json["cost"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "document": document,
        "goods": goods,
        "qty": qty.toJson(),
        "price": price.toJson(),
        "cost": cost.toJson(),
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

class Price {
  final int number;
  final String currency;
  final Qty per;

  Price({
    required this.number,
    required this.currency,
    required this.per,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        number: json["number"],
        currency: json["currency"],
        per: Qty.fromJson(json["per"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "currency": currency,
        "per": per.toJson(),
      };
}

class Qty {
  final int number;
  final String uom;

  Qty({
    required this.number,
    required this.uom,
  });

  factory Qty.fromJson(Map<String, dynamic> json) => Qty(
        number: json["number"],
        uom: json["uom"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "uom": uom,
      };
}
