import 'package:napt_sklad/model/test_model.dart';

abstract class AppData {
  static final List<TestModel> testDataModel = List.generate(
    50,
    (index) => TestModel(
      "Bolnol India 10 sht",
      20,
      6000,
      7000,
      "02.06.2024",
      "12345678",
      "test",
      "test",
      "test",
    ),
  );
}
