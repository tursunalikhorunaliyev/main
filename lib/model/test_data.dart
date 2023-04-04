import 'package:flutter/material.dart';
import 'package:napt_sklad/model/test_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class TestDataGridSource extends DataGridSource {
  List<DataGridRow> _studentsGrid = [];

  final List<TestModel> students;

  TestDataGridSource({required this.students}) {
    _studentsGrid = students
        .map(
          (e) => DataGridRow(
            cells: [
              DataGridCell<String>(
                columnName: "Polnoe Naimovanie",
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
      return Center(
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}
