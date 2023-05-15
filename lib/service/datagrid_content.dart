import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';
import 'package:napt_sklad/controller/data/model/tables/sold_model_test.dart';

abstract class DataGridContent {
  static final List<SellDataModel> testDataModelSell = List.generate(
    100,
    (index) => SellDataModel(
      "Bolnol 10 sht",
      20,
      60023420,
      70068768,
      "02.06.2024",
      "12345678",
      "1",
      "1",
      "1",
    ),
  );

  static final List<SoldDataModel> testDataModelSold = List.generate(
    100,
    (index) => SoldDataModel(
      "Bolnol 10 sht tytyytyty",
      20,
      600230,
      700687,
      "02.06.2024",
      "12345678",
      "test",
      "test",
      "",
    ),
  );
}
