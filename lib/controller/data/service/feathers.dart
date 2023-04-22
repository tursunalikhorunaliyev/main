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

  Future<SearchData> getData(String search) async {
    Map<String, dynamic> response =
        await Api.feathers().find(serviceName: "memories", query: {
      "oid": "yjmgJUmDo_kn9uxVi8s9Mj9mgGRJISxRt63wT46NyTQ",
      "ctx": const ['drugs'],
      "search": search
    });
    return SearchData.fromJson(response);
  }
}
