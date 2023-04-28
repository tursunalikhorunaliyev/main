import 'package:napt_sklad/controller/data/connection_data.dart';
import 'package:napt_sklad/controller/data/model/auth/auth_data.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';

class FeathersService {
  Future<AuthData> auth() async {
    var response =
        await Api.feathers().create(serviceName: "authentication", data: {
      "strategy": "local",
      "email": "test",
      "password": "test",
    });
    final authData = AuthData.fromJson(response);
    return authData;
  }

/* 
  List<Map<String, dynamic>> listCheckDoc(Map<String, dynamic> data) async {
    Map<String, dynamic> response = await Api.feathers().find(
        serviceName: "memories",
        params: {
          "oid": "yjmgJUmDo_kn9uxVi8s9Mj9mgGRJISxRt63wT46NyTQ",
          "ctx": const ['warehouse', 'dispatch', 'document'],
          // filter: {
          //   "status": "draft"
          // }
        });
    return response;
  }

  // status = draft | payed | deleted
  // data = {created_at: "iso-date-time", status: "draft"}
  // {"_id": "...", "_uuid":"..", created_at: "iso-date-time"}
  List<Map<String, dynamic>> createCheckDoc(Map<String, dynamic> data) async {
    Map<String, dynamic> response = await Api.feathers().create(
        serviceName: "memories",
        data: data,
        params: {
          "oid": "yjmgJUmDo_kn9uxVi8s9Mj9mgGRJISxRt63wT46NyTQ",
          "ctx": const ['warehouse', 'dispatch', 'document'],
        });
    return response;
  }

  List<Map<String, dynamic>> findCheckLine(String docId, Map<String, dynamic> data) async {
    Map<String, dynamic> response = await Api.feathers().create(
        serviceName: "memories",
        data: data,
        params: {
          "oid": "yjmgJUmDo_kn9uxVi8s9Mj9mgGRJISxRt63wT46NyTQ",
          "ctx": const ['warehouse', 'dispatch'],
          "filter": {
            "document": docId,
          }
        });
    return response;
  }

  // goods = {"_id": "...", "_uuid": "...", name: "...", uom: {"_id": "...", "_uuid": "...", name: "..."}}

  // status = | "deleted"
  // data = {status: "deleted", "document": checkDoc["_uuid"], "goods": goods["_uuid"], "qty": {number: 123, uom: goods["uom"]["_uuid"]}, price: {number: 1, currency: "UZS"}, cost: {number: 1, currency: "UZS"}}
  List<Map<String, dynamic>> createCheckLine(Map<String, dynamic> data) async {
    Map<String, dynamic> response = await Api.feathers().create(
        serviceName: "memories",
        data: data,
        params: {
          "oid": "yjmgJUmDo_kn9uxVi8s9Mj9mgGRJISxRt63wT46NyTQ",
          "ctx": const ['warehouse', 'dispatch'],
        });
    return response;
  }

  // "_id" > id
  List<Map<String, dynamic>> patchCheckLine(String id, Map<String, dynamic> data) async {
    Map<String, dynamic> response = await Api.feathers().patch(
        serviceName: "memories",
        objectId: id,
        data: data,
        params: {
          "oid": "yjmgJUmDo_kn9uxVi8s9Mj9mgGRJISxRt63wT46NyTQ",
          "ctx": const ['warehouse', 'dispatch'],
        });
    return response;
  }
*/
  Future<SearchData> getSearchData(String search) async {
    Map<String, dynamic> response =
        await Api.feathers().find(serviceName: "memories", query: {
      "oid": "yjmgJUmDo_kn9uxVi8s9Mj9mgGRJISxRt63wT46NyTQ",
      "ctx": const ['drugs'],
      "search": search
    });
    return SearchData.fromJson(response);
  }
}