import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/custome_selection_manager.dart';
import 'package:napt_sklad/controller/provider/data_grid_provider.dart';
import 'package:napt_sklad/model/datagrid_content.dart';
import 'package:napt_sklad/model/sold_datagrid_source.dart';
import 'package:napt_sklad/model/sold_model_test.dart';
import 'package:napt_sklad/view/widgets/grid_columns.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class DataGridMainSoldList extends StatelessWidget {
  DataGridMainSoldList({super.key});

  final testData =
      SoldDataGridSource(students: DataGridContent.testDataModelSold);

  @override
  Widget build(BuildContext context) {
    final dataGridProvider = Provider.of<DataGridProvider>(context);
    return SfDataGridTheme(
      data: SfDataGridThemeData(
        selectionColor: Colors.amber,
        rowHoverColor: Colors.amber,
        currentCellStyle: const DataGridCurrentCellStyle(
          borderColor: Colors.black,
          borderWidth: 1,
        ),
        gridLineColor: Colors.black,
        headerColor: const Color.fromARGB(13, 0, 0, 0),
        headerHoverColor: Colors.blue,
      ),
      child: SfDataGrid(
        controller: dataGridProvider.dataGridController,
        selectionMode: SelectionMode.single,
        navigationMode: GridNavigationMode.row,
        rowHeight: 32,
        source: testData,
        gridLinesVisibility: GridLinesVisibility.both,
        headerRowHeight: 30,
        headerGridLinesVisibility: GridLinesVisibility.both,
        columns: [
          GridColumn(
            maximumWidth: 40,
            columnName: " ",
            label: Checkbox(
              value: false,
              onChanged: (value) {},
            ),
          ),
          GridColumn(
            minimumWidth: 464,
            columnName: "PN",
            label: const GridColumns(
              text: "Polnoe Naimovanie",
            ),
          ),
          GridColumn(
            maximumWidth: 40,
            columnName: "UP",
            label: const GridColumns(
              text: "UP",
            ),
          ),
          GridColumn(
            maximumWidth: 120,
            columnName: "Sena",
            label: const GridColumns(
              text: "Sena",
            ),
          ),
          GridColumn(
            minimumWidth: 125,
            columnName: "Ostatok",
            label: const GridColumns(
              text: "Ostatok",
            ),
          ),
          GridColumn(
            minimumWidth: 150,
            columnName: "Seriya",
            label: const GridColumns(
              text: "Seriya",
            ),
          ),
          GridColumn(
            columnName: "Srok God",
            label: const GridColumns(
              text: "Srok God",
            ),
          ),
          GridColumn(
            maximumWidth: 80,
            columnName: "MX",
            label: const GridColumns(
              text: "MX",
            ),
          ),
          GridColumn(
            maximumWidth: 60,
            columnName: "IKPU",
            label: const GridColumns(
              text: "IKPU",
            ),
          ),
          GridColumn(
            columnName: "Aksiya",
            label: const GridColumns(
              text: "Aksiya",
            ),
          ),
        ],
      ),
    );
  }
}
