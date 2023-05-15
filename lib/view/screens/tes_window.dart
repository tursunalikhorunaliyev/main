import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/data/model/check/check_creation_model.dart';
import 'package:napt_sklad/controller/data/model/check/created_check_model.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';
import 'package:napt_sklad/controller/data/model/table/table_line.dart';
import 'package:napt_sklad/controller/data/service/feathers.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int selectedIndex = -1;
  bool isSelected = false;
  String data = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () async {
              SearchData searchData =
                  await FeathersService().getSearchData("a");
            },
            child: const Text("Get search"),
          ),
          ElevatedButton(
            onPressed: () async {
              CreatedCheckData createdCheckData = await FeathersService()
                  .createCheckDoc(CheckCreationModel(
                      createdAt: DateTime.now(), status: CheckStatus.draft));
            },
            child: const Text("Create doc"),
          ),
          ElevatedButton(
            onPressed: () {
              FeathersService().createCheckLine(TableLine(
                goods: "0e31b0bc-31ab-4e41-97af-fb0af5cb9cfb",
                document: "4d0b35b7-c86e-41d1-8dc9-9b811533c0b9",
                price: Price(
                    number: 1,
                    currency: "UZB",
                    per: Qty(number: 1, uom: "pkg")),
                qty: Qty(number: 1, uom: "pkg"),
                cost: Cost(number: 1, currency: "UZB"),
              ).toJson());
            },
            child: const Text("AddLine to check"),
          ),
          ElevatedButton(
            onPressed: () {
              FeathersService()
                  .findCheckLine("4d0b35b7-c86e-41d1-8dc9-9b811533c0b9");
            },
            child: const Text("Retrive added check line"),
          )
        ],
      )),
    );
  }
}
