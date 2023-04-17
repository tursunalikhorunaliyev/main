import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/checkbox_border.dart';
import 'package:napt_sklad/controller/enums/check_box_enum.dart';
import 'package:napt_sklad/model/sell_model_test.dart';
import 'package:napt_sklad/model/sold_model_test.dart';
import 'package:napt_sklad/view/widgets/check_box_custome.dart';

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
      "test",
      "test",
      "test",
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
