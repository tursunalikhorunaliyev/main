import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:napt_sklad/model/app_data.dart';
import 'package:napt_sklad/model/test_data.dart';
import 'package:napt_sklad/view/widgets/grid_columns.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class DataGridMainPage extends StatelessWidget {
  DataGridMainPage({super.key});

  final testData = TestDataGridSource(students: AppData.testDataModel);
  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      rowHeight: 32,
      source: testData,
      gridLinesVisibility: GridLinesVisibility.both,
      headerRowHeight: 30,
      headerGridLinesVisibility: GridLinesVisibility.both,
      stackedHeaderRows: [
        StackedHeaderRow(
          cells: [
            StackedHeaderCell(
              columnNames: ["Sena", "Summa"],
              child: const Center(
                child: Text("So skidkoy"),
              ),
            ),
          ],
        )
      ],
      columns: [
        GridColumn(
          minimumWidth: 208,
          columnName: "PN",
          label: const GridColumns(
            text: "Polnoe Naimovanie",
          ),
        ),
        GridColumn(
          maximumWidth: 200,
          columnName: "Kolichestvo",
          label: const GridColumns(text: "Kolichestvo"),
        ),
        GridColumn(
          columnName: "Sena",
          label: const GridColumns(text: "Sena"),
        ),
        GridColumn(
          columnName: "Summa",
          label: const GridColumns(text: "Summa"),
        ),
        GridColumn(
          columnName: "Srok God",
          label: const GridColumns(text: "Srok God"),
        ),
        GridColumn(
          columnName: "Seriya",
          label: const GridColumns(text: "Seriya"),
        ),
        GridColumn(
          columnName: "MX",
          label: const GridColumns(text: "MX"),
        ),
        GridColumn(
          columnName: "IKPU",
          label: const GridColumns(text: "IKPU"),
        ),
        GridColumn(
          columnName: "Mark",
          label: const GridColumns(text: "Mark"),
        ),
      ],
    );
  }
}
