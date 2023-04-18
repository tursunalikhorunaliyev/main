import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/checkbox_border.dart';
import 'package:napt_sklad/controller/enums/check_box_enum.dart';
import 'package:napt_sklad/model/sell_model_test.dart';
import 'package:napt_sklad/view/widgets/check_box_custome.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class SellDataGridSource extends DataGridSource {
  List<DataGridRow> _studentsGrid = [];

  final List<SellDataModel> students;

  SellDataGridSource({required this.students}) {
    _studentsGrid = students
        .map(
          (e) => DataGridRow(
            cells: [
              DataGridCell<String>(
                columnName: "PN",
                value: e.polnoeNaimovaniye,
              ),
              DataGridCell<int>(
                columnName: "Kolichestvo",
                value: e.kolichestvo,
              ),
              DataGridCell<int>(
                columnName: "Sena",
                value: e.sena,
              ),
              DataGridCell<int>(
                columnName: "Summa",
                value: e.summa,
              ),
              DataGridCell<String>(
                columnName: "Srok god",
                value: e.srokGod,
              ),
              DataGridCell<String>(
                columnName: "Seriya",
                value: e.seriya,
              ),
              DataGridCell<String>(
                columnName: "MX",
                value: e.mx,
              ),
              DataGridCell<String>(
                columnName: "IKPU",
                value: e.ikpu,
              ),
              DataGridCell<String>(
                columnName: "Mark",
                value: e.mark,
              ),
            ],
          ),
        )
        .toList();
  }

  @override
  List<DataGridRow> get rows => _studentsGrid;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map((e) {
      return columContent(e);
    }).toList());
  }

  Widget columContent(DataGridCell<dynamic> e) {
    if (e.columnName == "IKPU") {
      return Padding(
        padding: const EdgeInsets.only(right: 3),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            e.value.toString(),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    } else if (e.columnName == "Kolichestvo") {
      return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 3),
          child: Text(
            e.value.toString(),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    } else if (e.columnName == "Sena") {
      return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 3),
          child: Text(
            e.value.toString(),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    } else if (e.columnName == "PN") {
      return Padding(
        padding: const EdgeInsets.only(left: 2),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            e.value.toString(),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    } else if (e.columnName == "Summa") {
      return Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(right: 3),
          child: Text(
            e.value.toString(),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 2),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            e.value.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
  }
}
