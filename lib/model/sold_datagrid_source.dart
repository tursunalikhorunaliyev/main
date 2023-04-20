import 'package:flutter/material.dart';
import 'package:napt_sklad/model/sold_model_test.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class SoldDataGridSource extends DataGridSource {
  List<DataGridRow> _studentsGrid = [];

  final List<SoldDataModel> students;

  SoldDataGridSource({required this.students}) {
    _studentsGrid = students
        .map(
          (e) => DataGridRow(
            cells: [
              DataGridCell<String>(
                  columnName: "PN", value: e.polnoeNaimovaniye),
              DataGridCell<int>(
                columnName: "UP",
                value: e.up,
              ),
              DataGridCell<int>(
                columnName: "Sena",
                value: e.sena,
              ),
              DataGridCell<int>(
                columnName: "Ostatok",
                value: e.ostatok,
              ),
              DataGridCell<String>(
                columnName: "Srok god",
                value: e.srok,
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
                columnName: "Aksiya",
                value: e.aksiya,
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
    if (e.columnName == "UP" ||
        e.columnName == "IKPU" ||
        e.columnName == "Aksiya") {
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
    } else if (e.columnName == "Ostatok") {
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
    } else if (e.columnName == "PN") {
      return Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment: Alignment.topLeft,
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
